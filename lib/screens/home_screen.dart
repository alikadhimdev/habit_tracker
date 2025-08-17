import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/active_habit_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text(
              "احصاءات اليوم",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Text("العادات المنجزة"),
                          Text(
                            "3",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Text("العادات المتبقية"),
                          Text(
                            "3",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Text("الستريك الحالي"),
                          Text(
                            "7",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "الاحصاءات الفعالة",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Column(
              children: [
                ActiveHabitCard(),
                SizedBox(height: 20),
                ActiveHabitCard(),
                SizedBox(height: 20),
                ActiveHabitCard(),
                SizedBox(height: 20),
                ActiveHabitCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
