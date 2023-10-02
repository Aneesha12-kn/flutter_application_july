import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:cardex(),));
}

class cardex extends StatelessWidget{
  var Icon=[
   " Icon(Icons.home)"
  "Icon(Icons.ring_volume)"
  "Icon(Icons.camera)"
  "Icon(Icons.star)"
  "Icon(Icons.wifi)"
  "Icon(Icons.card_giftcard)"
  "Icon(Icons.phone_callback)"
  "Icon(Icons.message_outlined)"
 " Icon(Icons.whatshot_sharp)"
 "Icon(Icons.music_note)"
 "Icon(Icons.electric_bike)"
 "Icon(Icons.video_call)"
  ];

  var text=[
    
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    
  ];
  
 
  

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2), 
      itemBuilder: (context,text){
        var index;
       
        return Stack(
color: Colors.primaries[index%Colors.primaries.length],
       children:   List.generate(
        ( context,[index]=>stack(
          Text("Icon(Icons[index])"),
       
        Text("text(text[index])"),
        )),
       
       ),
      
          
        
       
          );
      }),
    );
  }

}