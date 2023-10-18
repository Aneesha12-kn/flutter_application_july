import 'package:flutter/material.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listui.dart';
void main(){
   runApp(MaterialApp(home:clipwidget(),));
}

class clipwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: ListView(
      children: [
        ClipRect(
          child: Align(
            widthFactor: .4,
            heightFactor: .6,
            alignment: Alignment.topCenter,
            child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4gK2_p8SDZt_5-FHcdGyMxd1Paets7KOu_Q&usqp=CAU"),
          )
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Container(
           
            child:Image.network("https://images.unsplash.com/photo-1626705343685-eb1e06c9271f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3F1YXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
          ),

        ),
        SizedBox(height:20.0),
       ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1696921881903-e87e5662d9b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        SizedBox(height: 20.0,),
       
      ],
    )
    );
   
  }

}