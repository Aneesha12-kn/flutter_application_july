import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("assets/icon/tourism.png",width: 250,height: 250,),

          const SizedBox(
            height: 20,
          ),
Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5),
        child:  MaterialButton(onPressed: (){},
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),

          child:
          const ListTile(
            title:const Text("Login Here"),
            trailing: Icon(Icons.person_rounded),
          ),),),

Padding(padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 5,),
         child: MaterialButton(onPressed: (){},
          color: Colors.green,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child:const ListTile( 
            title:const Text("Register Here"),
            trailing: Icon(Icons.person_add_outlined),
)),),

         Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5,),
        child:  MaterialButton(onPressed: (){},
          color: Colors.blueAccent,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child:const ListTile( 
            title:Text("Login with facebook"),
            trailing: FaIcon(FontAwesomeIcons.facebook),
          ), ),),

Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5),
       child:   MaterialButton(onPressed: (){},
          color: Colors.red,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child:const ListTile( 
            title:const Text("Login with Google"),
            trailing: FaIcon(FontAwesomeIcons.google),
),),),
        ],
      )
    );
  }

}