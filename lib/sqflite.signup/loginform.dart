import 'package:flutter/material.dart';
import 'package:flutter_application_july/sqflite.signup/registration.dart';


class Login_Form extends StatefulWidget {
  @override
  State<Login_Form> createState() => _Login_FormState();
}
class _Login_FormState extends State<Login_Form>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:Text("Login with Signup"),

    ),
    body:SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text("Login",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top:10),
              child:TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: "user name",
                  fillColor: Colors.grey,
                  filled: true,
                ),
              )

            ),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top:10),
              child:TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  fillColor: Colors.grey,
                  filled: true,
                ),
              )

            ),
            const SizedBox(height: 50,),
            Container(
              margin:EdgeInsets.all(30),
              width: double.infinity,
              child: TextButton(
                child: 
                  Text("Login",
                  style:TextStyle(color: Colors.white),
                  ),
                  onPressed: (){},
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
              
                  ),
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("doesn't have an account"),
              TextButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (_)=>Signup_Form()));

              }, child: Text("Signup"),)
              
                ],
              )
            )
          ],
        ),
      ),
    )
   );
  }

}
