import 'package:employee_management_system/presentation/presentation_index.dart';

class SignupApplicants extends StatelessWidget {
  const SignupApplicants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signup Applicants List"),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email:"),
                          const SizedBox(width: 10),
                          Text("eyobzebene3580@gmail.com"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Role:"),
                          const SizedBox(width: 10),
                          Text("Employee"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //todo: when clicked employee or manager can be registered successfully and can be authenticated
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Approve Employee"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          //todo: delete the employee from the database
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Remove Employee"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email:"),
                          const SizedBox(width: 10),
                          Text("behailu34@gmail.com"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Role:"),
                          const SizedBox(width: 10),
                          Text("manager"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Approve Employee"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Remove Employee"),
                          ),
                        ],
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
