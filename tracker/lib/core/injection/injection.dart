import 'package:appwrite/appwrite.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tracker/config.dart';
import 'package:tracker/features/auth/data/bloc/auth_bloc.dart';
import 'package:tracker/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:tracker/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:tracker/features/auth/data/repository/auth_repository.dart';

class InjectionContainer {
  /// Other Dependencies
  Client get _client => Client()
      .setEndpoint(Config.endpoint)
      .setProject(Config.projectId)
      .setSelfSigned(status: true);
  Account get _account => Account(_client);
  Databases get _databases => Databases(_client);
  FlutterSecureStorage get _secureStorage => const FlutterSecureStorage();

  /// Local Datasoure
  AuthLocalDatasource get _authLocalDatasource =>
      AuthLocalDatasource(_secureStorage);

  /// Remote Datasoure
  AuthRemoteDataSource get _authRemoteDatasoure =>
      AuthRemoteDataSource(_account, _databases);

  /// Repository
  AuthRepository get _authRepository =>
      AuthRepository(_authRemoteDatasoure, _authLocalDatasource);

  /// Bloc
  AuthBloc get authBloc => AuthBloc(_authRepository);
}
