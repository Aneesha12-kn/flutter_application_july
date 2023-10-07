import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
   runApp(MaterialApp(home:StaggeredGridd2(),));
}

class StaggeredGridd2 extends StatelessWidget{
  var Images=[
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbr71KYVvkzmgBiY28VlTtbgXD799ZL7C8SA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk907co0TI-c2pWIIuS151GeeH5B_UpNK1gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnckhp97TANALbXzu-l2kYj0ril1PnQcC-Ug&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREVukFyARvtOGN9oAY8Z2xHu-OEHs-LZ5AIQ&usqp=CAU",
  ];
  var cac=[
    1,2,3,2,3,4,
  ];
  var mac=[
    1,4,2,2,1,2,
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      
      title:const Text("Staggerd Grid View"),
    ),
    body:SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 4,

      children: List.generate(5, (index) => StaggeredGridTile.count(
        crossAxisCellCount: cac[index], 
      mainAxisCellCount: mac[index], 
      child:Card(
      
color: Colors.primaries[index%Colors.primaries.length],

        child: Image.network(Images[index]),
      )),),
    )
   ));
  }

}