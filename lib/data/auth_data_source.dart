import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  User? currentUser();

  Stream<User?> userStream();

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);
}
