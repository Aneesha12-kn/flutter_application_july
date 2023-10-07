import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:GridView6(),));
}
class GridView6 extends StatelessWidget{
var image=[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXfxeF21S5UWS7zJFvim8waYyxcaHGtNvYrA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxUswwy0dMkuPCkDqpCXEa4HoUrQRjNAydMQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhwCQ_c0TULcKsRb07CgdFdOBuoF6UiFmjxA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUNMsxhKly-9xI0K2lSBD8Pmi2BuYAMDPvg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhP9Qbg29B95ijg7AutvbBzuQ6KWl01h27Gg&usqp=CAU",
];
var name=[
  "USA",
  "ENGLAND",
  "FRANCE",
  "RUSSIA",
  "CANADA",
];


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:GridView.count(crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    children: List.generate(5, (index) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        
      ),
      child:Column(
        children:[
 Expanded(child: 
          Image.network(image[index],
         fit: BoxFit.fill,
         width: 300,
         height:200,
      
          ),
          ),
          Positioned(child: 
           Text(
            ' ${name[index]}',
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,),
              ),),
         
        
        ],
      )
    )),)

  );
  }
}