import 'package:employee_management_system/presentation/presentation_index.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmployeeAttendance extends StatelessWidget {
  const EmployeeAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("employee attendance"),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text("Today's Attendance: "),
                    const SizedBox(width: 20),
                    //todo: check attendance here and change the interface after approved by the manager
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Present"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    //todo: change this depending on the approval of the manager
                    Text("yes"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text("Absents: "),
                    SizedBox(
                      width: 20,
                    ),
                    //todo: change this to the absent number of the employee
                    Text("3")
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text("Presents: "),
                    SizedBox(
                      width: 20,
                    ),
                    //todo: change this to the present number of the employee's
                    Text("27")
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
