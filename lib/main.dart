import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_tracker/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'عاداتي',
      locale: const Locale("ar", "SA"),
      supportedLocales: const [Locale("ar", "SA"), Locale("en", "US")],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1E88E5), // أزرق أساسي
          onPrimary: Colors.white, // نص فوق الأزرق
          secondary: Color(0xFFFF7043), // برتقالي دافئ
          onSecondary: Colors.white,
          surface: Colors.white, // خلفيات رئيسية وبطاقات
          surfaceTint: Color(0xFFF7F9FC), // لمسة خفيفة للخلفية الفاتحة
          onSurface: Color(0xFF1A1A1A), // نصوص داكنة
          error: Color(0xFFD32F2F), // لون الخطأ
          onError: Colors.white,
        ),

        fontFamily: "Cairo",
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 5,
          centerTitle: true,
        ),
      ),
      initialRoute: LoginScreen.screenRoute,
      routes: {LoginScreen.screenRoute: (context) => LoginScreen()},
    );
  }
}
