import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Stackex(),));
}

class Stackex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("stack ex"),
    ),
    body: Center(
      child:Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.red,

          ),
        Positioned(
          top:280,
          left:180,
        child:  Container(
            height: 500,
            width: 500,
            color: Colors.green,

          ),),
            Container(
            height: 500,
            width: 500,
            color: Colors.yellow,

          ),
         
        ],
      ),
    ),
  );
  }
 
}