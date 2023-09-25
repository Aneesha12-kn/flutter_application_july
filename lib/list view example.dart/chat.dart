import 'package:flutter/material.dart';
import 'package:flutter_application_july/home.dart';

void main(){
  runApp(MaterialApp(home: whatsapp(),));
}
class whatsapp extends StatelessWidget{
var name=[
  "mom",
  "dad",
  "asi",
  "aisha",
  "habeeba",
];

var image=[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkL_Ns6zGNiEwT-aRnMR109YSYYSg9a7Dxg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmVLQvUW8I9PHp3sWjmzXnJ_GO524UzABMe_HIz_p6ryXdiN6EzB_lOd7twK0zT9vl5FE&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKJwhBpP9dO9A_yH_FVIKC-wCDh5v4r-OXWQ&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
];

var msg=[
  "hi",
  "how are you",
  "hello",
  "aaa",
  "mrng",
];


var time=[
  "10.53",
  "10.32",
"9.45",
"9.59",
"11.32",
];
var msgno=[
  "1",
  "2",
  "3",
  "1",
  "2",
];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title:Text("whatsapp"),),
      body:ListView(
        children: List.generate(5, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(msg[index]),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(image[index]),
      
             
              ),
              trailing: Wrap(direction: Axis.vertical,
              children: [
                Text(time[index]),
                SizedBox(width: 10),
               Padding(padding: const
               EdgeInsets.only(left: 30),
               child: CircleAvatar(
                minRadius: 6,
                maxRadius: 12,
                backgroundColor: Colors.green,
                
                child:Text(msgno[index]),
                 ),)

              ],
              ),
            ),
          ),
        ),

    ),
   );
  }

}