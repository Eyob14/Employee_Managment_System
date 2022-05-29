import 'package:flutter/material.dart';
import '../../core_index.dart';


class ManagerDashboard extends StatelessWidget {
  const ManagerDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Manager DASHBOARD"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(manager_choices.length, (index) {
              return Center(
                child: SelectCard(choice: manager_choices[index]),
              );
            }),
          ),
        ),
      ),
    );
  }
}


const List<Choice> manager_choices = <Choice>[
  Choice(title: 'Attendance', icon: Icons.calendar_today_rounded),
  Choice(title: 'Notification', icon: Icons.notification_important_rounded),
  Choice(title: 'Announcements', icon: Icons.notification_add_rounded),
  Choice(title: 'New Announcement', icon: Icons.notification_add),
  Choice(title: 'Employees', icon: Icons.list_rounded),
  Choice(title: 'Profile', icon: Icons.contact_page_rounded),
];
