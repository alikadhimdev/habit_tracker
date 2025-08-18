import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_tracker/screens/habit_details.dart';
import 'package:habit_tracker/screens/main_screen.dart';
import 'package:habit_tracker/screens/login_screen.dart';
import 'package:habit_tracker/screens/register_screen.dart';
import './theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var _appTheme = ThemeMode.system;

class _MyAppState extends State<MyApp> {
  void changeTheme(String theme) {
    if (theme == "light") {
      _appTheme = ThemeMode.light;
    } else if (_appTheme == "dark") {
      _appTheme = ThemeMode.dark;
    } else {
      _appTheme = ThemeMode.system;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عاداتي',
      locale: const Locale("ar", "SA"),
      supportedLocales: const [Locale("ar", "SA"), Locale("en", "US")],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _appTheme,
      initialRoute: RegisterScreen.screenRoute,
      routes: {
        MainScreen.screenRoute: (context) => MainScreen(),
        LoginScreen.screenRoute: (context) => LoginScreen(),
        RegisterScreen.screenRoute: (context) => RegisterScreen(),
        HabitDetails.screenRoute: (context) => HabitDetails(),
      },
    );
  }
}
