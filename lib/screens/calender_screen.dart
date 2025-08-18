import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fl_chart/fl_chart.dart';

class CalenderScreen extends StatefulWidget {
  CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  List<String> _filtersName = ["جميع الفلاتر", "التمارين", "القراءة"];
  int _selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("الفلاتر", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 10),
            Container(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _filtersName.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedFilter = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: _selectedFilter == index
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onPrimary,
                    ),

                    child: Text(
                      _filtersName[index],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _selectedFilter == index
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              rowHeight: 35,
            ),

            SizedBox(height: 10),
            Text("التقدم", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("التقدم الاسبوعي"),
                Text("60%", style: Theme.of(context).textTheme.headlineLarge),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "اخر 7 ايام",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        "+ 10 %",
                        style: TextStyle(color: Colors.green[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(
              height: 200,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 2),
                        FlSpot(4, 5),
                      ],
                      isCurved: true,
                      dotData: FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
