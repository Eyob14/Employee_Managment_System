
import 'package:flutter/material.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Notifications List"),
        ),
        body: Center(
          //todo: give this a Gamil like sense
          child: Container(
            padding: EdgeInsets.all(10),
            //todo: change this to listview builder to generate the list of notifications
            child: ListView(
              children: [
                //todo: when clicked this card it will goes to the detail notification page
                //todo: change this to a card widget
                Container(
                  color: Colors.grey,
                  child: Row(
                    children: const [
                      //todo: change this according to the sender either manager or owner
                      Text(
                        "Owner",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  color: Colors.grey,
                  child: Row(
                    children: const [
                      //todo: change this according to the sender either manager or owner
                      Text(
                        "Manager",
                      ),
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
