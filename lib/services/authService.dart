import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  Future signInAnon() async{
    try{
      AuthResult result = await _firebaseAuth.signInAnonymously(); 
      FirebaseUser user=result.user;
      return user;
    }catch(e){
      print(e);
      return null;
    }
  }
}