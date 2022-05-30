import 'package:employee_management_system/presentation/presentation_index.dart';
import 'package:flutter/material.dart';
import '../../core/core_index.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Profile"),
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
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  child: IconButton(
                    icon: const Icon(Icons.edit),
                    //todo: change profile picture of the user
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //todo: put all the appropriate infomrmation of the user inside here
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Update"),
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
