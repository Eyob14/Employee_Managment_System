import 'package:employee_management_system/presentation/presentation_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AttendanceCheck extends StatelessWidget {
  AttendanceCheck({Key? key}) : super(key: key);

  AuthenticatedUser? loggedInUser = UserDataProvider.authenticatedUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Attendance checker"),
        ),
        body: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 0,
            ),
            child: BlocBuilder<AttendanceBloc, AttendanceState>(
                builder: (_, state) {
              if (state is AttendanceFailure) {
                return const Text('Could get empoyee attendance');
              }
              if (state is LoadTodaysAttendancesOfAllUsers) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    ListView.separated(
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: state.attendanceList.length,
                      itemBuilder: (context, index) {
                        final attendance = state.attendanceList[index];
                        return attendanceListTile(context, attendance);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 16);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String value = DateTime.now().toString();
                          String today = value.substring(0, 10);
                          BlocProvider.of<AttendanceBloc>(context).add(
                              GetTodayAttendanceOfAllUsers(
                                  loggedInUser!.token.toString(),
                                  today));
                          GoRouter.of(context).push('/attendance-check');
                        },
                        child: Text("load history")),
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            })),
      ),
    );
  }
}

Widget attendanceListTile(BuildContext context, AttendanceList attendance) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("${attendance.email}"),
      const SizedBox(width: 16),
      ElevatedButton(
        onPressed: () {},
        child: Text("Yes"),
      ),
      const SizedBox(width: 16),
      ElevatedButton(
        onPressed: () {},
        child: Text("No"),
      ),
      const SizedBox(width: 16),
    ],
  );
}
