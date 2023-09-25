import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()    //to run an app
{
  runApp(MaterialApp     //default theme of our flutter app
    (home:SplashPage()   // initial page to be launched while running app
  ) );
}
class SplashPage extends StatelessWidget{

  @override
  //to creat our widget tree we use build function
  Widget build(BuildContext context) {
    // Buildcontext - used to locate widgets on the widget tree and monitor their actions
    return Scaffold(
        backgroundColor: Colors.black,
        body:Center(

        child: Center(
          child: Container(alignment: Alignment.bottomCenter,
          child:ClipRRect(
          borderRadius: BorderRadius.circular(40),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///  build
                // Icon(Icons.favorite,
                //     color: Colors.red,
                //     size: 80,),
                Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/017/221/784/non_2x/google-pay-logo-transparent-free-png.png"),width: 300,height: 300,),
                Text("Google",style: GoogleFonts.abhayaLibre(color: Colors.white,fontSize: 40

                ),)




              ],
            ),
          ),
    )

    ),
        )
    )
    );
  }

}