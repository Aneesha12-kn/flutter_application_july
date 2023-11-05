import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MusicUI()));
}

class MusicUI extends StatefulWidget {

  @override
  State<MusicUI> createState() => _MusicUIState();
}

class _MusicUIState extends State<MusicUI> {
  var images =[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjsh77kKyKSmtFBFQBoK3Cxc2Z4FV0snT19w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSle50wpeRpG9zMWjIIGuQE4FB9k7Bc0arkCw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPX0eOx5AoSl488IpmCrH4EHOvicuZ8jNxzQ&usqp=CAU'
  ];

  var music=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj1t9I8vFhc19Lo435HA3K3w4JAJMDSpatQstNCLrA6MfmjNSpUBRnjcufotl3KUm7-_Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7sds_vsSowAWC1SdTxE6QNE7hNZvIDQxmLQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9QqK3LkfUKSUsTa7vcy43x3KK624DGW0Vjw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_oy3F3nJIj9IU6SraJkMqlYY--wAppi7uQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTecE77-TPQ_GqPNiFGHlQwL7chgpAWcff68A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcRgdp_360vmd056pyccCyZuZ2B7aEals8ZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZ5_1iRV0EAKNdfgnpabbcMCzw4x6hGHF1g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx0INO4FtYc_lxeD4fQckxBsHx9wv0Q1YLtQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_sy8bOuzfC-_ZeEunDRwCGfgRflnrNVBmTg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSykcwMntKSM4tDNog53jr3V91KY7Zdgcsxjw&usqp=CAU'
  ];
  var artist=[
    ' Nithya Mammen, Ayraan, Kailas',
    'sia',
    ' Arijit Singh, Shilpa Rao',
    'Arijit Singh, Tulsi Kumar',
    'Rahat Fateh Ali Khan',
    ' Dhanush, Anirudh Ravichander',
    'Aditya',
    ' Darshan Raval',
    ' Armaan Malik',
    'Arijit Singh, Alka Yagnik',
  ];
  var title=[
    'Alare',
    'Binks No Sake',
    'Chaleya',
    'Hum Nashe Metera',
    'Ore piyaa',
    'Megham karukatha',
    'Chaand baaliya',
    'ASal Mein',
    'Main rahoon',
    'Agar tum saath ho',
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[900],
            title: Text('Musify',style: TextStyle(color: Colors.pinkAccent[100],fontSize:30,fontWeight: FontWeight.bold),),
            centerTitle:true ,
           pinned: false,
           floating: true,
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index) =>SingleChildScrollView(
              scrollDirection:Axis.horizontal,
          child:Row(
            children: List.generate(
                2,
                    (index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: ClipRRect(
                        borderRadius:
                        BorderRadius.circular(45),
                        child: Image.network(images[index])),
                  ),
                )),
          ),
                  ),
            childCount: 1,
          ),
          ),
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Recommended for you',style: GoogleFonts.montserrat(fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.pink[100]),),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Column(
            children: List.generate(8, (index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: Container(height: 55,width: 55,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage(music[index]),fit: BoxFit.cover)
                  ),
                  // child: Image.asset(sugg[index])
                ),
                title: Text(title[index],style: GoogleFonts.montserrat(color: Colors.pink[100],fontWeight: FontWeight.bold),),
                subtitle: Text(artist[index],style: TextStyle(color: Colors.white),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_border_outlined,color: Colors.pink[100],),
                    SizedBox(width: 60,),
                    Icon(Icons.download_outlined,color:Colors.pink[100],)
                  ],),
              ),
            )),
          ),childCount: 1))
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                title: Text('Home'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.play_circle_sharp,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100])
          ]),
    );
  }
}