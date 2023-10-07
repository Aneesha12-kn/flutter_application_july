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
    bottomNavigationBar: BottomNavigationBar(
      type:BottomNavigationBarType.shifting,
elevation: 5,

      backgroundColor: Colors.green,
      selectedItemColor: Colors.yellow,
      currentIndex: index,
      onTap: (tapedindex){
        setState(() {
          index=tapedindex;
        });
      },
    items: [
      BottomNavigationBarItem(

        backgroundColor: Colors.brown,
        icon: Icon(Icons.home),label:'Home'  ),
     
     BottomNavigationBarItem(
        backgroundColor: Colors.blue,
       icon: Icon(Icons.add_box_rounded),label: 'Reel'),
     
      BottomNavigationBarItem(
        backgroundColor: Colors.red,
        icon: Icon(Icons.park_rounded),label: 'Notify'),
      
      BottomNavigationBarItem(
        backgroundColor: Colors.green,
        icon: Icon(Icons.account_box),label: 'Profile'),
    ],),
    body: screens[index],
   );
  }

}