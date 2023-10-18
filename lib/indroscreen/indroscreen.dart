import 'package:flutter/material.dart';
import 'package:flutter_application_july/stateful_splash.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(){
  runApp(MaterialApp(home:introscreen(),));
}

class introscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    PageDecoration decorationpage= const PageDecoration(

      titleTextStyle: TextStyle(
        fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
      ),
bodyTextStyle: TextStyle(
  fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown,
),
boxDecoration: BoxDecoration(
  gradient: LinearGradient(colors: [
    Colors.white,Colors.yellow,Colors.orangeAccent,
],
begin: Alignment.bottomLeft,
end: Alignment.topRight,
),
),
imageFlex: 1,

    );
 return IntroductionScreen(
pages: [
  PageViewModel(
    decoration: PageDecoration(),
    title:"First Page",
    body:"indroduction of the book",
 image: IntroImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_e0CkSBCGa3nuQjMeRrtkaEFJKeDsQO6wrw&usqp=CAU"),
  ),

 PageViewModel(
  decoration: PageDecoration(),
    title:"Second  Page",
    body:"how the book came about, the scope of the book, why the book was written, and most importantly, why a reader should choose your book. However, an introduction also supplements the subject matter of the book",
 image: IntroImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAqLL33kqSAIzQpFeXU7IxcpVIkTQvtqLG9A&usqp=CAU"),
  ),

  PageViewModel(
    decoration: PageDecoration(),
    title:"Third Page",
    body:"Books are the best companions of human beings, which enrich our minds with knowledge. ",
 image: IntroImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTICD-d7PuZJ9Ux3n_ey6XTKfU8OUZ2qZjylw&usqp=CAU"),
  ),

 
],
onSkip:()=> Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>Splash2()),),
onDone:()=> Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>Splash2()),),
                    showSkipButton: true,
                    skip:const Text("Skip"),
                   // showBackButton: true,
                   // back: Text("back"),
                    next: const Icon(Icons.arrow_forward_rounded),
                    done: const Text("Done"),
                    dotsDecorator: const DotsDecorator(
                      activeShape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(Radius.circular(25)),

                      ),
                      size: Size(12, 18),
                      activeSize: Size(22, 28),
                      activeColor: Colors.green,
                    ),
                    
  );}
  
  Widget IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
     child:Container( 
      width:double.infinity,
      height:400,
      decoration:BoxDecoration(
        image:DecorationImage(
          fit:BoxFit.cover,
          image:
      NetworkImage(imgpath)))));
     
  }

}