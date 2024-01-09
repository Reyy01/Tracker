part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthLoginEvent extends AuthEvent {}
class AutRegiterEvent extends AuthEvent {}
class AuthLogoutEvent extends AuthEvent {}
