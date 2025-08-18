import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/habit_details.dart';

class ActiveHabitCard extends StatelessWidget {
  const ActiveHabitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, HabitDetails.screenRoute),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "الروتين الصباحي",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 2),
                Text("تمارين", style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 2),

                Text(
                  "30 دقيقة من الكارديو",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text("50%"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/image1.jpeg", fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
