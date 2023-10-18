import 'package:flutter/material.dart';
import 'package:flutter_application_july/custom%20widget/refractingwidget.dart';
void main(){
  runApp(MaterialApp(home: Grid_with_refracting(),));

}

class Grid_with_refracting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(;llllll
      appBar: AppBar(
        title:const Text("grid with refracting widget"),
      ),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,
      mainAxisSpacing: 12,crossAxisSpacing: 14),
      children: [
custom_card(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_e0CkSBCGa3nuQjMeRrtkaEFJKeDsQO6wrw&usqp=CAU",), 
text: "Book", icon: Icons.shopping_bag_rounded, click: (){}, click1: (){})
      ],),
    
    );
  }

}