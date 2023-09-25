

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home:ListView_separated(),));
}

class ListView_separated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:Text("listview_separator")
    ),
    body:ListView.separated(itemBuilder:(ctx,i){
      return  Card(
        child: FaIcon(FontAwesomeIcons.whatsapp,
        color:Colors.teal,),
      );
    }, 
    
    separatorBuilder: (context,index){
      if(index%4==0){
      return Divider(color:Colors.red,thickness: 3,);
      }else{
        return SizedBox();
      }
    }, itemCount: 15),
   );
  }

}