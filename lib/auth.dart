import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
get user => _auth.currentUser;

//SIGN UP METHOD
Future signUp(String email, String password) async {
  try {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return null;
  } on FirebaseAuthException catch (e) {
    return e.message;
  }
}

//SIGN IN METHOD
Future signIn(String email, String password) async {
  try {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return null;
  } on FirebaseAuthException catch (e) {
    return e.message;
  }
}

//SIGN OUT METHOD
Future signOut() async {
  await _auth.signOut();

  // ignore: avoid_print
  print('signout');
}