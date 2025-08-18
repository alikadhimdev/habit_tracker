import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/calender_screen.dart';
import 'package:habit_tracker/screens/home_screen.dart';
import 'package:habit_tracker/screens/setting_screen.dart';
import 'package:habit_tracker/screens/stats_screen.dart';
import '../widgets/add_habit.dart';

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

  final List<Map<String, dynamic>> _screens = [
    {"screen": HomeScreen(), "title": "تتبع العادات"},
    {"screen": CalenderScreen(), "title": "التقويم"},
    {"screen": StatsScreen(), "title": "الاحصاءات"},
    {"screen": SettingScreen(), "title": "الاعدادات"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_currentIndex]["title"]),
        actions: [
          _currentIndex == 0
              ? IconButton(
                  onPressed: () => habitsDialog(context),
                  icon: Icon(Icons.add, size: 30),
                )
              : SizedBox(),
        ],
      ),
      body: _screens[_currentIndex]["screen"],
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
