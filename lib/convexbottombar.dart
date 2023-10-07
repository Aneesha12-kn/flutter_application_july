import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_july/griview%20example/gridview1.dart';
import 'package:flutter_application_july/griview%20example/gridview2.dart';
import 'package:flutter_application_july/stack_ex/fiatm.dart';
import 'package:flutter_application_july/stateful_login.dart';

void main(){
  runApp(MaterialApp(home:BottomBarEx()));
}

class BottomBarEx extends StatefulWidget{
  
  @override
 
  State<BottomBarEx> createState()  => _BottomBarExState(); 
   

  }
class _BottomBarExState extends State<BottomBarEx>
{
  int index=0;
  var screens = [
   Ficard(),
   GridView2(),
   GridView1(),
   Login_stateful(),
  ];
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
bottomNavigationBar: ConvexAppBar(
  style: TabStyle.react,
  items: const[
    TabItem(icon: Icons.list),
    TabItem(icon: Icons.calendar_today),
    TabItem(icon: Icons.assessment),
    TabItem(icon: Icons.account_box),
  ],
  initialActiveIndex: index,
  onTap: (tapedindex){
    setState(() {
    index=
    tapedindex;  
    });
  },

),

body: screens[index],
   );
  }
  
  }