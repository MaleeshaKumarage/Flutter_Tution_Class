import 'package:flutter/material.dart';
import 'package:flutter_tution_class/services/authService.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

final AuthService _auth=AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(backgroundColor: Colors.brown[400],
      elevation: 0.0,
      title: Text("Sign In"),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child:RaisedButton(
        child:Text("Sign in Anon"),
        onPressed:() async{
            dynamic result=await _auth.signInAnon();
            if(result==null){
              print("error");
            }else{
              print("sucess");
              print(result);
            }
        }
        ),
      )
    );
  }
}