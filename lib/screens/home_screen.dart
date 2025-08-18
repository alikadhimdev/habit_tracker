import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/active_habit_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text(
              "احصاءات اليوم",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    HabitStatsCard(title: "العادات المكتملة", count: 5),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 5,
              ),
            ),

            const SizedBox(height: 10),
            Text(
              "الاحصاءات الفعالة",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ActiveHabitCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: 17,
            ),
          ],
        ),
      ),
    );
  }
}

class HabitStatsCard extends StatelessWidget {
  final String title;
  final int count;
  const HabitStatsCard({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Text(title, style: Theme.of(context).textTheme.bodySmall),
            Text("$count", style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
