import 'package:flutter/material.dart';

class SentNotificationListScreen extends StatelessWidget {
  const SentNotificationListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sent Announcements List"),
        ),
        body: Center(
          //todo: give this a Gamil like sense
          child: Container(
            padding: EdgeInsets.all(10),
            //todo: change this to listview builder to generate the list of notifications
            child: ListView(
              children: [
                //todo: change this to a card widget
                Container(
                  color: Colors.grey,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text("For: "),
                          //todo: changed to the reciver of this specific notification
                          Text("employee"),
                        ],
                      ),
                      //toto: this will bring the details of this specific notification
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //todo: change this according to the sender either manager or owner
                      Row(
                        children: const [
                          Text("For: "),
                          //todo: changed to the reciver of this specific notification
                          Text("employee"),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
