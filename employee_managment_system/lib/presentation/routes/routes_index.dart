import 'package:go_router/go_router.dart';
import '../presentation_index.dart';
import 'constants.dart';

class MyRouter {
  // final LoginState loginState;
  MyRouter();

  late final router = GoRouter(
    // refreshListenable: loginState,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: rootRouteName,
        path: '/',
        redirect: (state) => state.namedLocation(homeRouteName),
      ),
      GoRoute(
        name: homeRouteName,
        path: '/home',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const WelcomeScreen(),
        ),
      ),
      GoRoute(
        name: loginRouteName,
        path: '/login',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        name: createAccountRouteName,
        path: '/create-account',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: SignupScreen(),
        ),
      ),
      GoRoute(
        name: welcomeRouteName,
        path: '/welcome',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const WelcomeScreen(),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: ErrorPage(error: state.error),
    ),
    redirect: (state) {
    //   if (state.isAuthenticated) {
    //     return state.namedLocation(homeRouteName);
    //   }
    //   return state.namedLocation(loginRouteName);
    // },
    }
  );
}
