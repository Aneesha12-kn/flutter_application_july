

import 'package:flutter/material.dart';
import 'package:flutter_application_july/storages/homeshared.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home:Login_Shared(),));
}

class Login_Shared extends StatefulWidget{

  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {

final username=TextEditingController();
final password=TextEditingController();
late bool newuser;
late SharedPreferences prefs;

  @override
void inistate(){
  check_user_already_Login();
  super.initState();
}

void check_user_already_Login()async{
  prefs=await SharedPreferences.getInstance();
  newuser=prefs.getBool('firstlogin')??true;

  if(newuser==false){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=>Home_shared()));
  }
}

  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text("Login_page"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
         TextField(controller: username,
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder()
           ), ),
    
           TextField(controller: password,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder()
          ),), 
    
    ElevatedButton(onPressed: ()  async{
      prefs=await SharedPreferences.getInstance();
      String uname= username.text.trim();
      String pass=password.text.trim();
    
      if(uname != ''&& pass !=''){
      prefs.setString('username', uname);
      prefs.setString('password', pass);
    prefs.setBool('firstlogin', false);
    
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_shared()));
      }
    },
     child:const Text("Login")),
    
    
        ],
      ),
    ),
  );
  }
}