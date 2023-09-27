import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:contact_book(),
  ));
}

class contact_book extends StatelessWidget{
  var name=[
    "mom",
    "dad",
    "asi",
    "aisha",
    "habeeba",
    "fahad",
    "sani",
    "fathima",
    "saabi",
    "akku",
  ];

  var number=[
    "98766535678",
    "98765357788",
    "87654678788",
    "93455667766",
    "94565666566",
    "87654354566",
    "87646788988",
    "89675465678",
    "78967655443",
    "09889655443",
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("contactbook"),
  
    ),
    body: ListView(
children: List.generate(10, (index) => Card(
  child: ListTile(
    title: Text(name[index]),
    subtitle: Text(number[index]),
    leading: CircleAvatar(
      backgroundColor: Colors.red,
      child:Icon(Icons.people_alt_rounded)),
    trailing: Icon(Icons.arrow_forward_ios),
    ),
  ),
)),
    );
  
  }

}