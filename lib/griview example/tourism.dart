import 'package:flutter/material.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listui.dart';

void main(){
  runApp(MaterialApp(home:GridView7(),));
}
class GridView7 extends StatelessWidget{
 var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbr71KYVvkzmgBiY28VlTtbgXD799ZL7C8SA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk907co0TI-c2pWIIuS151GeeH5B_UpNK1gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnckhp97TANALbXzu-l2kYj0ril1PnQcC-Ug&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREVukFyARvtOGN9oAY8Z2xHu-OEHs-LZ5AIQ&usqp=CAU",
  ];

  var name = [
    'India',
    'Europe',
    'Uk',
    'Canada',
    'Paris',
    'Albany',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title: Text("Popular",
style:TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
 
) ,),
),

body: ListView.builder(
  itemCount:img.length, 
  itemBuilder: (context,index){
    return Card(
child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
  
  children: [
    Expanded(child: 
    Image.network(
      img[index],
    
      width: 200,
      height: 200,
fit:BoxFit.fill,
   ),),
  
    
   
   Positioned(child:
     Text(
    ' ${name[index]}',
      style: TextStyle(fontSize: 30),
      ),),
     
    
     
    
    
      
      
  
   
  ],
  
),
    );
  },),
    );
  }

}