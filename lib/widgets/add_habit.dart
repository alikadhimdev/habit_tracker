import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/text_input.dart';

Future<void> habitsDialog(BuildContext context) {
  List<IconData> iconsList = [
    Icons.book, // للقراءة
    Icons.fitness_center, // للتمارين الرياضية
    Icons.water_drop, // لشرب الماء
    Icons.bedtime, // للنوم
    Icons.restaurant, // للنظام الغذائي
    Icons.self_improvement, // للتأمل
    Icons.directions_run, // للجري
    Icons.local_hospital, // للصحة
    Icons.psychology, // للتعلم
    Icons.cleaning_services, // للتنظيف
    Icons.pets, // لرعاية الحيوانات الأليفة
    Icons.smoke_free, // للإقلاع عن التدخين
    Icons.money, // للتوفير
    Icons.family_restroom, // للوقت العائلي
    Icons.work, // للعمل
  ];

  List<Color> colorsList = [
    Colors.red[400]!,
    Colors.blue[400]!,
    Colors.green[400]!,
    Colors.yellow[400]!,
    Colors.orange[400]!,
    Colors.purple[400]!,
    Colors.pink[400]!,
    Colors.teal[400]!,
    Colors.cyan[400]!,
    Colors.indigo[400]!,
  ];

  List<String> frequencyList = ["يوميا", "أسبوعيا", "شهريا"];

  int _selectedIconIndex = 0;
  int _selectedColor = 0;
  int _selectedFrequency = 0;
  TimeOfDay? _selectedTime;
  bool _timeSwitch = false;
  return showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            insetPadding: EdgeInsets.zero,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: AlertDialog(
                contentPadding: EdgeInsets.zero,
                title: Text("عادة جديدة"),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 10),
                    TextInputBuild(
                      hintText: "اسم العادة",
                      handleChange: (value) {},
                    ),
                    SizedBox(height: 5),
                    Text(
                      "الايقونة",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 5),

                    Container(
                      height: 150,
                      width: double.infinity,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          childAspectRatio: 1,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemCount: iconsList.length,
                        itemBuilder: (context, index) {
                          return IconCardItem(
                            icon: iconsList[index],
                            isSelected: _selectedIconIndex == index,
                            onTap: () {
                              setState(() {
                                _selectedIconIndex = index;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "اللون",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),

                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colorsList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: ColorItem(
                              color: colorsList[index],
                              isSelected: _selectedColor == index,
                              onTap: () {
                                setState(() {
                                  _selectedColor = index;
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      "التكرار",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),

                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemCount: frequencyList.length,
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _selectedFrequency == index
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.onPrimary,
                              foregroundColor: _selectedFrequency == index
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _selectedFrequency = index;
                              });
                            },
                            child: Text(
                              frequencyList[index],
                              style: TextStyle(fontSize: 10),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(
                          "تذكير",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        subtitle: Text("اختيار وقت للتذكير"),
                        trailing: Transform.scale(
                          scale: .7,
                          child: Switch(
                            value: _timeSwitch,
                            onChanged: (value) async {
                              if (value) {
                                final TimeOfDay? pickedTime =
                                    await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    );
                                setState(() {
                                  _selectedTime = pickedTime;
                                  _timeSwitch = value;
                                });
                              } else {
                                setState(() {
                                  _timeSwitch = value;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ),

                    _timeSwitch
                        ? Text(
                            _selectedTime == null
                                ? MaterialLocalizations.of(
                                    context,
                                  ).formatTimeOfDay(TimeOfDay.now())
                                : MaterialLocalizations.of(
                                    context,
                                  ).formatTimeOfDay(_selectedTime!),
                          )
                        : SizedBox(),
                  ],
                ),
                actionsPadding: EdgeInsets.zero,
                actions: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            foregroundColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                          ),
                          onPressed: () {},
                          child: Text("حفظ"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.error,
                            foregroundColor: Theme.of(
                              context,
                            ).colorScheme.onError,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("الغاء"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

class ColorItem extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final bool isSelected;
  const ColorItem({
    super.key,
    required this.color,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: BoxBorder.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,

            border: BoxBorder.all(color: Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}

class IconCardItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  const IconCardItem({
    super.key,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isSelected
            ? Theme.of(context).colorScheme.surfaceTint
            : Theme.of(context).colorScheme.onPrimary,
        elevation: 3,
        child: Icon(
          size: 18,
          icon,
          color: isSelected
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
