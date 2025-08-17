import 'package:flutter/material.dart';

class ActiveHabitCard extends StatelessWidget {
  const ActiveHabitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الروتين الصباحي",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Text("تمارين", style: Theme.of(context).textTheme.titleLarge),
              Text(
                "30 دقيقة من الكارديو",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Card(
                color: Theme.of(context).colorScheme.surfaceTint,
                elevation: 4,
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
    );
  }
}
