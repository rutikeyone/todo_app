import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/data/auth_data_source.dart';
import 'package:todo_app/domain/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  const AuthRepositoryImpl({required AuthDataSource authDataSource})
    : _authDataSource = authDataSource;

  @override
  User? currentUser() {
    return _authDataSource.currentUser();
  }

  @override
  bool isAuthenticated() {
    final currentUser = _authDataSource.currentUser();
    return currentUser != null;
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    return _authDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Stream<User?> userStream() {
    return _authDataSource.userStream();
  }

  @override
  Future<void> registerWithEmailAndPassword(String email, String password) {
    return _authDataSource.registerWithEmailAndPassword(email, password);
  }

  @override
  Future<void> signOut() {
    return _authDataSource.signOut();
  }
}
