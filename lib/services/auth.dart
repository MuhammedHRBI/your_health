import 'package:firebase_auth/firebase_auth.dart';
import 'package:your_health/authenticate/my_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  MyUser? _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }
}