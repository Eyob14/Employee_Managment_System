import 'package:employee_management_system/presentation/presentation_index.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Profile"),
        ),
        body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            padding: const EdgeInsets.all(40.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.only(left: 150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text("Name: "),
                                SizedBox(
                                  width: 10,
                                ),
                                //todo: the role of the person goes here
                                Text("Eyob Zebne"),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: const [
                                Text("Role: "),
                                SizedBox(
                                  width: 10,
                                ),
                                //todo: the role of the person goes here
                                Text("Owner"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //todo: put all the appropriate infomrmation of the user inside here
                Container(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text("Email: "),
                          SizedBox(width: 10),
                          Text("eyobzebene3580@gmail.com"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text("password: "),
                          SizedBox(width: 10),
                          Text("1234kdlaf"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text("Department: "),
                          SizedBox(width: 10),
                          Text("sales"),
                        ],
                      ),
                      ElevatedButton(
                        //todo: navigate to the edit profile screen when presssed
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
