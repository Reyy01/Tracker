import 'package:tracker/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:tracker/features/auth/data/datasource/auth_remote_datasource.dart';

class AuthRepository {
  late AuthRemoteDataSource _remoteDatasoure;
  late AuthLocalDatasource _authlocalDatasource;

  AuthRepository(
    AuthRemoteDataSource authRemoteDataSource,
    AuthLocalDatasource authLocalDatasource,
  ) {
    _remoteDatasoure = authRemoteDataSource;
    _authlocalDatasource = authLocalDatasource;
  }
}
