part of 'auth_bloc.dart';

@immutable
class AuthState {
  const AuthState();

  factory AuthState.initial() => const AuthState();

  AuthState copyWith() {
    return const AuthState();
  }
}
