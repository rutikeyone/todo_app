import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  bool isAuthenticated();

  User? currentUser();

  Stream<User?> userStream();

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);
}