import 'package:flutter/material.dart';
import 'package:flutter_application_july/mediaquery/bigscrren.dart';
import 'package:flutter_application_july/mediaquery/mobilescrren.dart';

void main(){
  runApp(MaterialApp(home:HomePage(),));
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomepageState();
    
  }
  
 

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  var devicewidth=MediaQuery.of(context).size.width;
  if(devicewidth<600){
    return MobileScreen();
  }else{
    return BigScreen();
  }
  }

}