import 'package:flutter/material.dart';

class homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_homepageState();
 }
 class _homepageState extends State<homepage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:const Text("permission checking"),
    ),
    body:Center(
      child:Padding(padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(onPressed: requestCameraPermission, 
          child: const Text("request camera permission",style: TextStyle(fontSize: 20),),

           ),

           const SizedBox(height:20),
           ElevatedButton(onPressed: requestMultiplePermission, 
           child:const Text("Request Multiple Permission",style:TextStyle(fontSize: 15)),),

           SizedBox(height: 20.0,),
           ElevatedButton(onPressed: requestPermissionWithOpenSetting,
            child: Text("request Permission Settingh",style: TextStyle(fontSize: 16),))
        ],
      ),
      ,
      )
    )
  );
  }
void requestCameraPermission 
 }