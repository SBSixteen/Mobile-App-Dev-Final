import 'package:firebase_auth/firebase_auth.dart';


class AuthenticationProvider {
  AuthenticationProvider._internal();

  static final AuthenticationProvider _instance =

  AuthenticationProvider._internal();
  
  factory AuthenticationProvider() {
    return _instance;
  }

  void signInWithGoogle() async {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
      _firebaseAuth.signInWithPopup(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }
}
