import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


void main(){
  runApp(MaterialApp(home:LottieEx(),));
}

class LottieEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:Center(
      //child: Lottie.asset("assets/animation.json"),
child: Lottie.network("https://lottie.host/da3a0e33-7c87-4625-9518-31e18885a5be/niv45LbYST.json"),
    )
   );
  }

}