import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:GridView4(),));
}

class GridView4 extends StatelessWidget{
var image=[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKJwhBpP9dO9A_yH_FVIKC-wCDh5v4r-OXWQ&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFjO6rbNAKcZtfgpqkhnqWGPwcH5hAArN1A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU",
];

var name=[
  "product 1"
"product 2",
"product 3"
"product 4",
"product 4"

];

var price=[
  "400",
  "500",
  "700",
  "900",
  "800",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(5, (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.primaries[index%Colors.primaries.length],

        ),
      
        child: Column(
         children:[
           Image.network(image[index],
           width: 50,
           ),

         Text(
            "{name[index]}",
            style: TextStyle(fontSize: 50),
           ),
         
         const Text(
          "{price[index]}"
         ),
         ],
          
        ),
      )
      ),
      ),
    );
    
  }

}