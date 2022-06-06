import 'package:employee_management_system/presentation/presentation_index.dart';

class EmployeesList extends StatelessWidget {
  const EmployeesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Employees List"),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                //todo: make each individual cards to be clickable so that when it is clicked it goes to the profile view page of the individual
                Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name:"),
                          const SizedBox(width: 10),
                          Text("Eyob Zebene"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Department:"),
                          const SizedBox(width: 10),
                          Text("Sales"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //todo: delete the employee from the database and change the state of the application to a login page
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Delete Employee"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name:"),
                          const SizedBox(width: 10),
                          Text("Eyob Zebene"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Department:"),
                          const SizedBox(width: 10),
                          Text("Sales"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Delete Employee"),
                      ),
                      const SizedBox(
                        height: 20,
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
