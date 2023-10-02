import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Profile()));
}
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.menu),
        title: const Center(
            child: Text('Profile')),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[];
          }),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                child: Image.network(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mxQ30C-BokjK_ctkNJrBUavMsZ5Ae2tBLQ&usqp=CAU",
                
                fit: BoxFit.cover,
                  width: 2500,
                ),
              ),
            ],
          ),
          const Center(
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left:50),
                    child: Padding(
                      padding: EdgeInsets.only(top:55),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                         ),
                          Icon(Icons.message,color: Colors.white,)
                         ]
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:280),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:Colors.white,
                        width: 3
                      )
                    ),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCg3ECfhNnwn30E2r5J-Sb2UphwWfflyqgeA&usqp=CAU",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text('christeena',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize:15),),
                  const SizedBox(height: 4,),
                  const Text('mentalist',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize:10),),
                ],
              ),
            ),
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right:50),
                  child: Padding(
                    padding: EdgeInsets.only(top:55),
                    child: Stack(
                      alignment: Alignment.center,
                      children:[
                        CircleAvatar(
                        radius: 25,
                      ),
                    Icon(Icons.add,color: Colors.white,)
        ],
      ),
                  ),
                ),
              ],
            ),
          ),
    ]
    )
    );
  }
}