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
  var subti = [20, 30, 40, 50, 100, 140, 150, 310, 200, 190];
var images=[
,

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(10, (index) =>
            Card(
              child: ListTile(
                title: Text(title[index]),
                subtitle: Text('${subti[index]}'),
               // leading: Image.asset(images[index]),
               // trailing: Icon(icons[index]),
               // trailing: Icon(Icons.shopping_cart),
               leading: CircleAvatar(
                backgroundImage: AssetImage("assets/icon/instagram.png")),
              ),
            )),
      ),
    );
  }
}