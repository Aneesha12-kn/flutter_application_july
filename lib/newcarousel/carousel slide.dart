import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_july/stack_ex/fiatm.dart';
void main(){
  runApp(MaterialApp(home:car_slider(),));
}

class car_slider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
title: Text("Slider"),
    ),
    body:CarouselSlider(items: [
      GestureDetector(
        onLongPress: (){

        },
      
     child: Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe4NbrsSjYx7Itn1T_nAb7qY8ymhcEPnxY3g&usqp=CAU"),),
        ),
      ),
    ),
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Ficard(),
         ));
      },
    
 child:Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfiPblFVDwfa3we_2gdnpfPh1e8EttvCYY2A&usqp=CAU"),),
        ),
      ),),
Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBfQy5rqJqQFV0wy03wZxSgNVGpF5l8JzODA&usqp=CAU",
        ),),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3nWHc99LgXOCDhyQAzstVFddgrBP9BCqSw&usqp=CAU"),),
        ),
      ),
Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK5l9-maSJb38B_-JBtVWmnXtl3B0aHJnPDg&usqp=CAU"),),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT-xRk2v7K5NB9R01BlMyBeVgWyXfvsIxxGQ&usqp=CAU"),),
        ),
      ),

    ], options: CarouselOptions(
      autoPlay: true,
      viewportFraction: .3,
      height: 500,
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      autoPlayCurve: Curves.bounceIn,
      autoPlayAnimationDuration: Duration(seconds: 2),
    )) , 
      );
  }

}