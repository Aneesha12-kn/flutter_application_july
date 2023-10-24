import 'package:flutter/material.dart';
import 'package:flutter_application_july/storages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_shared extends StatefulWidget{

  @override
  State<Home_shared> createState() => _Home_sharedState();
}

class _Home_sharedState extends State<Home_shared> {
  late SharedPreferences prefs;
String?user;

  @override
  void inistate(){
    fetchUser();
  }
void fetchUser()async{
  prefs=await SharedPreferences.getInstance();
  setState(() {
    user =prefs.getString('username');
  });
}

  Widget build(BuildContext context) {

    String? uname=prefs.getString('username');
   return Scaffold(
body:Center(
  child: Column(
    children: [
      Text("Welcome $uname"),
     const  SizedBox(
        height: 20,
      ),
      
      ElevatedButton(onPressed: (){
        prefs.setBool('firstlogin',true);


        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Login_Shared()));
      }, child: Text("Logout"))
    ],
  ),
),
   );
  }
}