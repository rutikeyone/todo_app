import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/data/auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _firebaseAuth;

  const AuthDataSourceImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  @override
  User? currentUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Stream<User?> userStream() {
    return _firebaseAuth.userChanges();
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> registerWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
