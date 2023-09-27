import 'package:flutter/material.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listview.constructor.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listview2.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listviewseperate.dart';
import 'package:flutter_application_july/stateful_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:AppBar1(),));
}

class AppBar1 extends StatelessWidget{
  const AppBar1({super.key});
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
    length: 4,
   child :Scaffold(
    appBar: AppBar(
title: const Text("whatsapp"),
actions: [
  Icon(Icons.camera_alt_outlined),
  SizedBox(width: 15,),
  Icon(Icons.search_rounded),
 PopupMenuButton(itemBuilder: (context) {
return [
PopupMenuItem(child:Text("new broadcast")),
PopupMenuItem(child:Text("new group")),
];
 }),
  
],
bottom: PreferredSize(preferredSize: Size.fromHeight(AppBar().preferredSize.height),
child:Container(
child: const TabBar(
  indicatorSize: TabBarIndicatorSize.label,
  labelPadding: EdgeInsets.symmetric(horizontal: 2),
 tabs: [
  Tab(text:
  "(Icons.people_rounded)",
  ),
  Tab(text: "chats",
  ),
  Tab(text: "status",
  ),
  Tab(text: "calls",
  ),
 ],
),
)),
        ),
body: TabBarView(children: [
  Login_stateful(),
  ListView_separated(),
  ListView2(),
  ListView1(),
]),

    ),);
   
  }

}
