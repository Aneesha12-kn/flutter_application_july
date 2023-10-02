import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:gridview5(),));
}

class gridview5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    Padding(padding: const EdgeInsets.all(8.0),
    child:GridView.custom(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10), 
    childrenDelegate:
     SliverChildBuilderDelegate((context, index) => Stack(
      children: [
        Container(
        decoration:BoxDecoration(borderRadius.circular(20),
        image: const DecorationImage(NetworkImage
        ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_pw1BpBfuZAevTRIg7RFQD1NZzdrEy016w&usqp=CAU",
        ))),
        const Positioned(
          bottom: 20,
          height: 20,
          child: Text
          ("40\$",style: TextStyle(color:Colors.black,
fontWeight:FontWeight.bold,
fontSize: 20),),

        ),
        const Positioned(
          bottom:20,
          height: 20,
Icon(Icons.favorite,
color: Colors.white,),)
           ),  ],
    ),))
  ),);

  }
}