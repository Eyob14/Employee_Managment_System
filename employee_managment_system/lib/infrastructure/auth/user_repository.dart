import 'auth.infrustructure.dart';

class UserRepository {
  final UserDataProvider dataProvider;

  UserRepository(this.dataProvider);

  Future<User> login(User user) async {
    return dataProvider.login(user);
  }
}
