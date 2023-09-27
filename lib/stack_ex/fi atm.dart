

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main(){
  runApp(MaterialApp(home:Ficard(),));
}

class Ficard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Colors.teal,
            ),
          ),
          Positioned(
            top:80,
            left: 30,
         child: Row(
            children: [
              Transform.rotate(angle: 90 *  pi/180,
            child:  FaIcon(FontAwesomeIcons.simCard,color: Colors.grey,),),

            Transform.rotate(angle: 90 *pi/180,
              child: FaIcon(FontAwesomeIcons.wifi,color: Colors.grey,),),

           ],
          )),
       Positioned(
        top:190,
        right: 20,
        child: Text("Aneesha K N",
        style: GoogleFonts.aBeeZee(fontSize: 20,
        color: Colors.grey
        ),)
        ),
        Positioned(
          top: 190,
          right: 20,
          child: Text("VISA",
          style: GoogleFonts.fahkwang(fontSize: 28,fontWeight:FontWeight.bold,
          color: Colors.grey),)
          ),
          Positioned(
            top:10,
            right: 20,
            child: GradientText("FI",
            style: GoogleFonts.libreBaskerville(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),
            colors: [
              Colors.black38,
              Colors.white,
              Colors.black26,
            ],
            stops: [
              0,3,1
            ],
            ))
        ],
      )
    ),
   );
  }

}