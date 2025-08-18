import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => _buildLightTheme();
  static ThemeData get darkTheme => _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        // ألوان أساسية
        primary: Color(0xFF1E88E5), // أزرق أساسي
        onPrimary: Colors.white, // نص فوق الأزرق
        primaryContainer: Color(0xFFD0E4FF), // أزرق فاتح للحاويات
        onPrimaryContainer: Color(0xFF001D36),

        // لون ثانوي
        secondary: Color(0xFFFF7043), // برتقالي دافئ
        onSecondary: Colors.white,
        secondaryContainer: Color(0xFFFFDAD2),
        onSecondaryContainer: Color(0xFF410001),

        // لون ثالث (accent إضافي)
        tertiary: Color(0xFF6D4C41), // بني فاتح (اختياري للتباين)
        onTertiary: Colors.white,
        tertiaryContainer: Color(0xFFFFDBCF),
        onTertiaryContainer: Color(0xFF2C150A),

        surface: Colors.white, // سطح البطاقات
        onSurface: Color(0xFF1A1A1A),

        onSurfaceVariant: Color(0xFF44474E),

        // للأخطاء
        error: Color(0xFFD32F2F),
        onError: Colors.white,
        errorContainer: Color(0xFFFFDAD4),
        onErrorContainer: Color(0xFF410002),

        // حدود وظلال
        outline: Color(0xFF74777F), // للـ borders
        shadow: Color(0xFF000000), // للـ elevation
        // معكوسات (تظهر أكثر بالدارك مود)
        inverseSurface: Color(0xFF2F3136),
        onInverseSurface: Color(0xFFF1F1F1),
        inversePrimary: Color(0xFF90CAF9),
      ),

      fontFamily: "Cairo",
      textTheme: ThemeData.light().textTheme
          .apply(fontFamily: "Cairo")
          .copyWith(
            // عناوين Title
            titleSmall: ThemeData.light().textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            titleMedium: ThemeData.light().textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            titleLarge: ThemeData.light().textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),

            // عناوين Headline
            headlineSmall: ThemeData.light().textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            headlineMedium: ThemeData.light().textTheme.headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold, fontFamily: "Cairo"),
            headlineLarge: ThemeData.light().textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
          ),

      appBarTheme: AppBarTheme(
        color: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
      ),
    );
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        // ألوان أساسية
        primary: Color(0xFF90CAF9), // أزرق فاتح ليتباين مع الخلفية الداكنة
        onPrimary: Color(0xFF00315C),
        primaryContainer: Color(0xFF1565C0),
        onPrimaryContainer: Color(0xFFD0E4FF),

        // لون ثانوي
        secondary: Color(0xFFFFB59D),
        onSecondary: Color(0xFF5C1A00),
        secondaryContainer: Color(0xFF8E2C0A),
        onSecondaryContainer: Color(0xFFFFDAD2),

        // لون ثالث
        tertiary: Color(0xFFD7B8AC),
        onTertiary: Color(0xFF432920),
        tertiaryContainer: Color(0xFF5C4036),
        onTertiaryContainer: Color(0xFFFFDBCF),

        surface: Color(0xFF1E1E1E), // أسطح البطاقات
        onSurface: Color(0xFFE1E1E1),

        onSurfaceVariant: Color(0xFFCACACA),

        // أخطاء
        error: Color(0xFFF28B82),
        onError: Color(0xFF680003),
        errorContainer: Color(0xFF8C1D18),
        onErrorContainer: Color(0xFFFFDAD4),

        // حدود وظلال
        outline: Color(0xFF8A8A8A),
        shadow: Color(0xFF000000),

        // معكوسات
        inverseSurface: Color(0xFFE1E1E1),
        onInverseSurface: Color(0xFF1E1E1E),
        inversePrimary: Color(0xFF1E88E5),
      ),

      fontFamily: "Cairo",
      textTheme: ThemeData.dark().textTheme
          .apply(fontFamily: "Cairo")
          .copyWith(
            // عناوين Title
            titleSmall: ThemeData.dark().textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            titleMedium: ThemeData.dark().textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            titleLarge: ThemeData.dark().textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),

            // عناوين Headline
            headlineSmall: ThemeData.dark().textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            headlineMedium: ThemeData.dark().textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
            headlineLarge: ThemeData.dark().textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
          ),

      appBarTheme: AppBarTheme(
        color: Color(0xFF1565C0),
        foregroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
      ),
    );
  }
}
