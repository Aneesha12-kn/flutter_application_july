import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(
          ///color: Colors.black,
       // image: DecorationImage(
        ////  fit: BoxFit.cover,
        //  image: NetworkImage("https://images.unsplash.com/photo-1693853202472-d9e039093dbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")
         gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors:[ 
         Colors.red,
         Colors.green,
         Colors.yellow,
         ]),
          ),
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.favorite,
            //   size: 80,
            //   color: Colors.red,
            // ),
            //
        
            Image(image: AssetImage("assets/icon/iconhome.png"),
              width: 100,
              height: 100,
            ),
            Text(
              "Hey World",
              style: GoogleFonts.dancingScript(
                fontSize: 30,
                color: Colors.white,
              ),
              // style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
      ),
      ),
    );
  }
}