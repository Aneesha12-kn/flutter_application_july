import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MusicPlayerUI1() ,));
}

class MusicPlayerUI1 extends StatefulWidget {

  @override
  State<MusicPlayerUI1> createState() => _MusicPlayerUI1State();
}

class _MusicPlayerUI1State extends State<MusicPlayerUI1> {

  var playlist=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWY68frfODxitk53ZWxgijToh8iUezaIvlAQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSle50wpeRpG9zMWjIIGuQE4FB9k7Bc0arkCw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMu2gL81wt_O-Ax__WdVuaW8gmZoNXeEZJ2Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQsKmEdYumGynXG64dGKZMW2cqYc4yY4JnAg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPX0eOx5AoSl488IpmCrH4EHOvicuZ8jNxzQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY-HVEjH96JbJ3_klPgFG0e9YdQx3UAkfedQ&usqp=CAU',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle:true,
            pinned: true,
            title: Text('Playlists',
                style:
                  GoogleFonts.monda(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[100]
                  )
                ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(45)
                    ),
                  child:
                  TextField(
                    style: const TextStyle(
                      color: Colors.white70
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                      hintText:'Search...',
                      hintStyle: GoogleFonts.montserrat(color: Colors.pink[100]),
                      filled: true,
                      fillColor:Colors.grey[850] ,
                      suffixIcon: Icon(Icons.search_rounded,color: Colors.pink[100],)
                    ),
                  )),
            ),
              ),
          SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index) => StaggeredGrid.count(
                    crossAxisCount:2,
                    mainAxisSpacing:2,
                    crossAxisSpacing:1,
                    children:
                      List.generate(
                        6,
                          (index)=>StaggeredGridTile.count(
                            crossAxisCellCount:1,
                            mainAxisCellCount:1,
                            child:Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(playlist[index],
                                      fit: BoxFit.cover,),),
                                ),
                            ),
                            ) ,)
                      )
                  ),
          ),
            ],
        ),
      bottomNavigationBar: SalomonBottomBar(currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex = index;
          onTap: (i) => setState(() => currentIndex = i);
        }
        );
      },
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.home,color: Colors.white,),
              title: const Text(''),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon: const Icon(Icons.search,color: Colors.white,),
              title: const Text(''),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon:const Icon(Icons.play_circle_outline,color: Colors.white,),
              title: const Text('Playlist',style: TextStyle(color: Colors.white)),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon: const Icon(Icons.more_horiz,color: Colors.white,),
              title: const Text(''),
              selectedColor: Colors.pink[100])
        ],
      ),
     );
  }
}