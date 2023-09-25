

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView_Builder(),));

}
class ListView_Builder extends StatelessWidget{
  var image=[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkL_Ns6zGNiEwT-aRnMR109YSYYSg9a7Dxg&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKJwhBpP9dO9A_yH_FVIKC-wCDh5v4r-OXWQ&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkL_Ns6zGNiEwT-aRnMR109YSYYSg9a7Dxg&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKJwhBpP9dO9A_yH_FVIKC-wCDh5v4r-OXWQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.insert_link_outlined),
              backgroundColor: Colors.teal,
            ),
            title:Text("Create Call Link") ,
            subtitle:Text('Share a link'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Recent"),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),// turn off scrolling property of inner listview
            shrinkWrap: true,
          itemCount: 5,
            itemBuilder: (context, index) {
          return  ListTile(
            title: Text("hello"),
            subtitle: const Row(
              children: [
                Icon(Icons.call_missed_rounded,
                  color: Colors.red,),
                Text("25 Sep 2023,"),
                Text('10.07')
              ],
            ),
            leading: CircleAvatar(
              backgroundImage:NetworkImage(image[index]),
            ),
            trailing: Icon(Icons.call),
          );
        }),
      ]
      ),
    );
  }
}