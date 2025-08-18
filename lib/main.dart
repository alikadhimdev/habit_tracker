import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_tracker/screens/habit_details.dart';
import 'package:habit_tracker/screens/main_screen.dart';
import 'package:habit_tracker/screens/login_screen.dart';
import 'package:habit_tracker/screens/register_screen.dart';
import 'package:provider/provider.dart';
import './theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppData(),
      child: const MyApp(),
    ),
  );
}

class AppData extends ChangeNotifier {
  ThemeMode _appTheme = ThemeMode.system;

  ThemeMode get appTheme => _appTheme;

  void changeTheme(ThemeMode theme) {
    _appTheme = theme;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // void changeTheme(String theme) {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, appData, child) {
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
          themeMode: appData.appTheme,
          initialRoute: MainScreen.screenRoute,
          routes: {
            MainScreen.screenRoute: (context) => MainScreen(),
            LoginScreen.screenRoute: (context) => LoginScreen(),
            RegisterScreen.screenRoute: (context) => RegisterScreen(),
            HabitDetails.screenRoute: (context) => HabitDetails(),
          },
        );
      },
    );
  }
}
