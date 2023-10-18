import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_july/home.dart';
import 'package:flutter_application_july/passing%20data%20betwn%20screens/using%20navigator/dummydata.dart';

void main(){
  runApp(
    MaterialApp(home:ProductMain(),
    routes: {
     'productdetails':(context)=>home()
    }));
  
}
class ProductMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:Text("Products")
    ),
    body:GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //  children: products.
     // map((product)=>InkWell(
      //  onTap: ()=>Navigator.of(context).pushNamed('details'),
      // child: Card(
       // child: Column( 
      //  children: [
       //   Container(
       //     height: 100,
       //     decoration: BoxDecoration(
        //      image: DecorationImage(
            //    fit: BoxFit.contain,
              ///  image: NetworkImage(product['image'])))),
            //    Text(product['name']),
             //   Text('${product['price']}\$'),
      //  ],)
     //  ) )  
        //    )
         // .toList(),
         children:
          List.generate(
            products.length, 
            (index) => InkWell(
              onTap: ()=>Navigator.of(context).pushNamed('details',arguments: products[index]['id']),
              child:Card(
                child:Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(products[index]['image']))
                      ),
                    ),
                    Text(products[index]['name']),
                    Text('${products[index]['price']}\$'),
                  ],
                ),
              ),
            ),
         )),
            );
       
    }}