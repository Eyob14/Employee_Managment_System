import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/application_index.dart';
import 'presentation/presentation_index.dart';
import './presentation/routes/routes_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = MyRouter().router;
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        title: "Employee Management System",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
