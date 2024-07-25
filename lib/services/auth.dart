import 'package:auth_fire/models/userModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userWithFirebaseUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
