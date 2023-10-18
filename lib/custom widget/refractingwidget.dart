import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_card extends StatelessWidget{
  NetworkImage? image;
  String?text;
  IconData?icon;
VoidCallback?click;
VoidCallback?click1;

custom_card(
  {
    required this.image,
     required this.text,
    required this.icon,
    required this.click,
   required this.click1,
  }
);
  
  @override
  Widget build(BuildContext context) {
return Card(
child: Column(
  children:[
  Stack(children: [
Image(image:
 image!),
 const Positioned(
  top:25,right: 25,height:25,
  child:Icon(Icons.favorite_border))
  ]),
Text(
  text!,
  style:GoogleFonts.satisfy(
fontSize: 25,
fontWeight: FontWeight.bold,
fontStyle: FontStyle.italic,

  ),
),
Icon(
  icon!,
  size: 10,
  ),
  
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      ElevatedButton(onPressed: click,
       child: const Icon(
        Icons.shopping_cart,
        color: Colors.white,
       )),
      ElevatedButton(onPressed: click1, child: Text("buy product",
      )),
    ],
  )
  
],),

  
);
  
  }

}