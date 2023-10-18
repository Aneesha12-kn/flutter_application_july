import 'package:flutter/material.dart';
import 'package:flutter_application_july/passing%20data%20betwn%20screens/using%20navigator/dummydata.dart';

void main(){
  runApp(
    MaterialApp(home:ProductMain(),)
  );
}
class ProductMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:Text("Products")
    ),
    body:ListView(
      padding: EdgeInsets.all(15),
      ///product  list oro map one by one aayi product kaanam
      children: products.map((product) => ListTile(
        leading: Image.network(product['image']),
        
        title:Text(product['name']),
        subtitle: Text('${product['price']}\$'),
      )
      ).toList(),
        )
     );
  }

}