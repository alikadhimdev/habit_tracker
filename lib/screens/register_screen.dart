import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/login_screen.dart';
import 'package:habit_tracker/widgets/build_button.dart';
import 'package:habit_tracker/widgets/text_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const screenRoute = "/register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late String username;
  late String email;
  late String password;

  void _handleRegister() {
    print(username);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "قم بتتبع عاداتك",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "ابني عاداتك الصحية وحقق اهدافك مع تطبيقنا السهل لتتبع العادات",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextInputBuild(
              hintText: "اسم المستخدم",
              icon: Icons.person_2_outlined,
              handleChange: (value) => username = value,
            ),
            SizedBox(height: 10),
            TextInputBuild(
              hintText: "البريد الالكتروني",
              icon: Icons.email,
              handleChange: (value) => email = value,
            ),
            SizedBox(height: 10),
            TextInputBuild(
              hintText: "كلمة المرور",
              icon: Icons.lock,
              handleChange: (value) => password = value,
            ),
            SizedBox(height: 20),
            BuildButton(
              text: "تسجيل جديد",
              onPressed: _handleRegister,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  LoginScreen.screenRoute,
                );
              },

              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.transparent;
                  }
                }),
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                foregroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed) ||
                      states.contains(WidgetState.hovered)) {
                    return Theme.of(context).colorScheme.secondary;
                  }
                  return Theme.of(context).colorScheme.primary;
                }),
              ),

              child: Text("لديك حساب بالفعل؟ تسجيل الدخول"),
            ),
            SizedBox(height: 40),
            BuildButton(
              text: " التسجيل باستخدام FACEBOOK",
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            BuildButton(
              text: " التسجيل باستخدام GOOGLE",
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
