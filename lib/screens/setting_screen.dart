import 'package:flutter/material.dart';
import 'package:habit_tracker/main.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _notifications = false;

  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context, listen: false);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("الحساب", style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(child: Image.asset("images/image1.jpeg")),
            title: Text("الملف الشخصي"),
            subtitle: Text(
              "عرض وتعديل الملف الشخصي",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.email_outlined),
              ),
            ),

            minLeadingWidth: 40,
            title: Text("البريد الاليكتروني"),
            subtitle: Text(
              "ادارة عنوان البريد الاليكتروني",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),

          SizedBox(height: 20),
          Text(
            "التفضيلات",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: Text("الثيم", style: Theme.of(context).textTheme.bodySmall),
            trailing: DropdownButton(
              style: Theme.of(context).textTheme.bodySmall,
              items: [
                DropdownMenuItem(value: ThemeMode.light, child: Text("الفاتح")),
                DropdownMenuItem(value: ThemeMode.dark, child: Text("المظلم")),
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text("النظام"),
                ),
              ],
              icon: SizedBox(),
              underline: SizedBox(),
              isDense: true,
              value: appData.appTheme,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    appData.changeTheme(value);
                  });
                }
              },
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text(
              "الاشعارات",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Transform.scale(
              scale: .6,
              child: Switch(
                value: _notifications,
                onChanged: (value) {
                  setState(() {
                    _notifications = value;
                  });
                },
              ),
            ),
          ),

          SizedBox(height: 20),
          Text(
            "التفضيلات",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,

            title: Text(
              "النسخ الاحتياطي والمزامنة",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Icon(Icons.cloud_circle),
          ),
        ],
      ),
    );
  }
}
