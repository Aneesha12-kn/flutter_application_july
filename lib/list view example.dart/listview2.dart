import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView2(),));
}

class ListView2 extends StatelessWidget {
  var title = [
    'Data1',
    'Data2',
    'Data3',
    'Data4',
    'Data5',
   
  ];
  var subti = [20, 30, 40, 50, 100,];
var image=[
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKJwhBpP9dO9A_yH_FVIKC-wCDh5v4r-OXWQ&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(5, (index) =>
            Card(
              child: ListTile(
                title: Text(title[index]),
                subtitle: Text('${subti[index]}'),
               // leading: Image.asset(images[index]),
               // trailing: Icon(icons[index]),
               // trailing: Icon(Icons.shopping_cart),
               leading: CircleAvatar(
              backgroundImage: NetworkImage(image[index]),
      
             
              ),
            )),
      ),
    ),);
  }
}