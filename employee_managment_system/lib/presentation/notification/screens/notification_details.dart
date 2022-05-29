import 'package:flutter/material.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Notification Detail"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.only(left: 30, top: 30),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.amber,
                  width: 1,
                )),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("From: "),
                    SizedBox(
                      width: 10,
                    ),
                    //todo: change this according to the sender name
                    Text("Owner"),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text("Message: "),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 400,
                      height: 400,
                      color: Colors.grey,
                      //todo: populate this by the notification message from the database
                      child: Text("check your attendance please"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
