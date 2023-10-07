import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DraweEx(),
  ));
}

class DraweEx extends StatelessWidget {
  const DraweEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY DRAWER'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mxQ30C-BokjK_ctkNJrBUavMsZ5Ae2tBLQ&usqp=CAU"))),
              accountName: Text('aneesha'),
              accountEmail: Text('aneesha3@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/icon/iconhome.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icon/iconhome.png"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.work_history_rounded),
              title: Text('Workflow'),
            ),
            ListTile(
              leading: Icon(Icons.park_rounded),
              title: Text('Notifications'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
    );
  }
}