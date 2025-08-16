import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/calender_screen.dart';
import 'package:habit_tracker/screens/home_screen.dart';
import 'package:habit_tracker/screens/setting_screen.dart';
import 'package:habit_tracker/screens/stats_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const screenRoute = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  void _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    CalenderScreen(),
    StatsScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تتبع العادات"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) => _changeIndex(value),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "التقويم",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "الإحصائيات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "الإعدادات",
          ),
        ],
      ),
    );
  }
}
