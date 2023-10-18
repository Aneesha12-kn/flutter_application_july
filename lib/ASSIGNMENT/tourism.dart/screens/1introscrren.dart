import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_july/ASSIGNMENT/tourism.dart/screens/2login_signup.dart';

void main(){
  runApp(MaterialApp(home:IntroScreenState(),
 
  ));
}
class IntroScreenState extends StatefulWidget {

  
  @override
  State<IntroScreenState> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreenState> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>Login_signup()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          
          child: Image.network("assets/icon/tourism.png",width: 250,height: 250,),
          
        ),
     
    );
  }
}