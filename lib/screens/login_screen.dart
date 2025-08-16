import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/build_button.dart';
import 'package:habit_tracker/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const screenRoute = "/login";

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
            TextInputBuild(hintText: "البريد الاليكتروني", icon: Icons.email),
            SizedBox(height: 10),
            TextInputBuild(hintText: "كلمة المرور", icon: Icons.lock),
            SizedBox(height: 20),
            BuildButton(
              text: "تسجيل جديد",
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},

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
              text: " الدخول باستخدام FACEBOOK",
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            BuildButton(
              text: " الدخول باستخدام GOOGLE",
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
