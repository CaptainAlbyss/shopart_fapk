import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //==================================Conexion via google a la APP===============================
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
        Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }


  //=================Ver que funciono la conexion antes de entrar al home======================
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: _isLoggedIn
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(_googleSignIn.currentUser.photoUrl, height: 50.0, width: 50.0,),
                Text(_googleSignIn.currentUser.displayName),
                OutlineButton( child: Text("Logout"), onPressed: (){
                  _logout();
                },)
              ],
            )
                : Center(
              child: OutlineButton(
                child: Text("Login with Google"),
                onPressed: () {
                  _login();
                },
              ),
            )),
      ),
    );
  }
}