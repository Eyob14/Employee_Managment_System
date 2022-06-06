import 'package:flutter/material.dart';

class AttendanceCheck extends StatelessWidget {
  const AttendanceCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Attendance checker"),
        ),
        //todo: convert this to a listview builder and show employees attendance requests
        body: Center(
          child: Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(20),
            height: 300,
            child: ListView(
              children: [
                Row(
                  children: [
                    Text("Eyob Zebene"), const SizedBox(width: 20),
                    //todo: check attendance here and change the interface after approved by the manager
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Approve"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Rejected"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    //todo: convert this to yes or no depending on approval or regection
                    const Text("No"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Behailu Abera"), const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Approve"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Rejected"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("yes"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
