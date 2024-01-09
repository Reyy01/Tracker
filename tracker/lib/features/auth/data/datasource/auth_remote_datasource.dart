import 'package:appwrite/appwrite.dart';

class AuthRemoteDataSource {
  late Account _account;
  late Databases _databases;

  AuthRemoteDataSource(Account account, Databases databases) {
    _account = account;
    _databases = databases;
  }
}
