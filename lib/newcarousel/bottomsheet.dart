import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home:bottomsheet(),));
}

class bottomsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:AppBar(
      title:const Text("slider"),
    ),
 body:CarouselSlider(items: [
      GestureDetector(
        onLongPress: (){
showSheet(context);
        },
      

  child: Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT-xRk2v7K5NB9R01BlMyBeVgWyXfvsIxxGQ&usqp=CAU"),),
        ),
      ),
),
], 
options:CarouselOptions() , 


),
   );
  }

}

void showSheet(BuildContext context) {
  showModalBottomSheet(context: context, builder: (context){
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("share via",style:TextStyle(fontSize: 20),),
        Divider(color: Colors.black26,),
        ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green),title:Text("whatsapp"),),
         ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pink),title:Text("instagram"),),
      ],
    );
  });
}