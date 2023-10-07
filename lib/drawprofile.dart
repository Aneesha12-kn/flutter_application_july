import 'package:flutter/material.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listui.dart';
import 'package:flutter_application_july/stack_ex/fiatm.dart';

void main(){
  runApp(MaterialApp(home:DrawEx2(),));
}
class DrawEx2 extends StatelessWidget{
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title:Text("navigation Drawer"),
      ),
 drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
              colors: [
                Colors.pink,
                Colors.white,
                Colors.blue,
              ]
            )
          ),
          child:ListView(
            children:[
              
   const   UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mxQ30C-BokjK_ctkNJrBUavMsZ5Ae2tBLQ&usqp=CAU"),)
      
        ),
         accountName: Text("sundhar puchai"),
         accountEmail: Text("ceo of abc company"),
     currentAccountPicture:CircleAvatar(
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgNk6IWGUHis0rLEP5ViUrkMm62wt5syQd0w&usqp=CAU"),
      ),
 

      ),
      SizedBox(
        height: 10,
      ),
      ListTile(
        leading: Icon(Icons.dashboard_outlined),
        title:Text("Dashboard"),
        //trailing: Icon(Icons.arrow_forward_ios),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Ficard()));
        },
      ),
         ListTile(
          leading: Icon(Icons.leaderboard_outlined
          ),
          title: Text("leads"),
         // trailing: Icon(Icons.arrow_forward_ios),
         ) ,
         ListTile(
          leading:Icon(Icons.man_outlined),
          title: Text("Clients"),
        //  trailing:Icon(Icons.arrow_forward_ios),
         )  ,
         ListTile(
          leading: Icon(Icons.notification_important_sharp),
          title: Text("projects"),
         // trailing: Icon(Icons.arrow_forward_ios),
         ),
         ListTile(
          leading: Icon(Icons.subscriptions_outlined),
          title: Text("subscription"),
       //   trailing: Icon(Icons.arrow_forward_ios),
         ),
         ListTile(
leading: Icon(Icons.payment_outlined),
title: Text("payment"),
//trailing: Icon(Icons.arrow_forward_ios),
         ),
         ListTile(
          leading: Icon(Icons.person_outline_rounded,
         ),
         title:Text("users"),
        //trailing:Icon(Icons.arrow_forward_ios),

         ),
         ListTile(
          leading: Icon(Icons.library_add_rounded),
          title: Text("library"),
         // trailing: Icon(Icons.arrow_forward_ios),
         )
          ] ),
          
          )
           ),
     
        );
    
    
  }}