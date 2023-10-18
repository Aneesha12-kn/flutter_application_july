import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ExpnsionTileEx(),));
}

class ExpnsionTileEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:Text("expansion card"),
    ),
    body: Column(
      children: [
        ExpansionTile(title: Text("colors"),
        subtitle: Text("expand to view more"),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink,),title: Text("pink") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,),title: Text("green") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,),title: Text("blue") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundColor: Colors.yellow,),title: Text("yellow") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("red") ,
          ),
 
 ExpansionTile(title: Text("colors"),
        subtitle: Text("expand to view more"),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAqLL33kqSAIzQpFeXU7IxcpVIkTQvtqLG9A&usqp=CAU"),
            ),title: Text("none") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_e0CkSBCGa3nuQjMeRrtkaEFJKeDsQO6wrw&usqp=CAU"),),
            title: Text("none") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTICD-d7PuZJ9Ux3n_ey6XTKfU8OUZ2qZjylw&usqp=CAU"),),
            title: Text("none") ,
          ),
 ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTICD-d7PuZJ9Ux3n_ey6XTKfU8OUZ2qZjylw&usqp=CAU"),),
            title: Text("none") ,
          ),




        ],
        ),
  



        ],
        ),


      ]

      
    )
 );
   
  }

}