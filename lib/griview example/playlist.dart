import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:playlist(),));
}
class playlist extends StatelessWidget{
  var image=[
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXfxeF21S5UWS7zJFvim8waYyxcaHGtNvYrA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxUswwy0dMkuPCkDqpCXEa4HoUrQRjNAydMQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhwCQ_c0TULcKsRb07CgdFdOBuoF6UiFmjxA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUNMsxhKly-9xI0K2lSBD8Pmi2BuYAMDPvg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhP9Qbg29B95ijg7AutvbBzuQ6KWl01h27Gg&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:CustomScrollView(
     slivers: [
      SliverAppBar(
        floating: false,
        pinned: true,
        backgroundColor: Colors.black,
        title: Text("Playlist"),
        bottom: AppBar(
          elevation: 0,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40)
            ),
            width: double.infinity,
          child: TextField(
          
            decoration: InputDecoration(
              
              border: InputBorder.none,
              
              hintText: "search",
              prefixIcon: Icon(Icons.search_rounded),
              
            ),
          ),
          ),
        ),
      ),
      SliverList(delegate: SliverChildBuilderDelegate((context, index) => Container(
        
        child:ListTile(
          
          leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXfxeF21S5UWS7zJFvim8waYyxcaHGtNvYrA&usqp=CAU",
          width: 100,
          height: 100,
          fit: BoxFit.contain,),
          

        ),
      ))),
     ], 
    ) ,
  );
  }

}