import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/add_habit.dart';
import "package:table_calendar/table_calendar.dart";

class HabitDetails extends StatelessWidget {
  const HabitDetails({super.key});
  static const screenRoute = "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل العادة")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "تمارين صباحية",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text("روتين تمارين يومية لزيادة طاقتك وتركيزك"),
              Text("التقدم"),
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(fontSize: 12),
                ),
                calendarStyle: CalendarStyle(
                  defaultDecoration: BoxDecoration(shape: BoxShape.rectangle),
                  selectedDecoration: BoxDecoration(shape: BoxShape.rectangle),
                  cellMargin: EdgeInsets.zero,
                  cellPadding: EdgeInsets.zero,
                ),
                rowHeight: 35,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Text("الاستمرارية الحالية"),
                            SizedBox(height: 10),
                            Text(
                              "13",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Text("اطول استمرارية"),
                            SizedBox(height: 10),
                            Text(
                              "24",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text("نصائح", style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 5),
              Text("التناسق هو المفتاح. حتى العمل القليل افضل من لا شيء."),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 25,
                      ),
                    ),

                    onPressed: () => habitsDialog(context),
                    child: Text("تعديل العادة"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.error,
                      foregroundColor: Theme.of(context).colorScheme.onError,
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 25,
                      ),
                    ),
                    onPressed: () {},
                    child: Text("حذف العادة"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
