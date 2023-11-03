
import 'package:flutter/material.dart';
import 'package:flutter_application_july/sqflite.signup/loginform.dart';
void main(){
  runApp(MaterialApp(home:Signup_Form(),));
}

class Signup_Form extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Signup_FormState();

}
class _Signup_FormState extends State<Signup_Form>{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(
    title:Text("Login with Signup"),
  ),
 body: SingleChildScrollView(
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
                  hintText: "user id",
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
                  prefixIcon: Icon(Icons.person_outline),
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
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
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
                  hintText: " Confirm Password",
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
                MaterialPageRoute(builder: (_)=>Login_Form()));

              }, child: Text("Login"),)
              
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