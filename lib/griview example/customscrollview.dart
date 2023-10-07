import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:SliverEx(),));
}

class  SliverEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: false,
          pinned: true,
          title: Text("Silver Example"),
          bottom: AppBar(
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40)

              ),
              width: double.infinity,
              child:TextField(
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  hintText: "search",
                  suffixIcon: Icon(Icons.camera_alt_rounded),
                  prefixIcon:Icon(Icons.search_rounded), 
                  ),
              )
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Name"),
            subtitle: Text("986754566"),
          ),
        )))
      ],
    ),
   );
  }

}