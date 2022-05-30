import 'package:flutter/material.dart';
import '../../components/custom_choice_card.dart';
import '../../core_index.dart';

class OwnerDashboard extends StatelessWidget {
  const OwnerDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Owner DASHBOARD"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(owner_choices.length, (index) {
              return Center(
                child: SelectCard(choice: owner_choices[index]),
              );
            }),
          ),
        ),
      ),
    );
  }
}



const List<Choice> owner_choices = <Choice>[
  Choice(title: 'Applicants', icon: Icons.list_rounded),
  Choice(title: 'Notification', icon: Icons.notification_important_rounded),
  Choice(title: 'Announcement', icon: Icons.notification_add_rounded),
  Choice(title: 'Profile', icon: Icons.contact_page_rounded),
];
