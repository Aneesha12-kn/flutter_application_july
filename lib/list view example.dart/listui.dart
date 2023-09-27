import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview(),
  ));
}

class Listview extends StatelessWidget {
  var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbr71KYVvkzmgBiY28VlTtbgXD799ZL7C8SA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk907co0TI-c2pWIIuS151GeeH5B_UpNK1gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShMOHBfPGb7D50_ZYOhDLdZl0mzLNr5Dayw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnckhp97TANALbXzu-l2kYj0ril1PnQcC-Ug&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREVukFyARvtOGN9oAY8Z2xHu-OEHs-LZ5AIQ&usqp=CAU",
  ];
  var name = [
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'France',
  ];
  var subname = [
    'India',
    'Europe',
    'Uk',
    'Canada',
    'Paris',
    'Albany',
  ];
  var Population = [
    'population:32.9 mill',
    'population:5.54 mill',
    'population:8.8 mill',
    'population:2.6 mill',
    'population:10.2 mill',
    'population:6.12 mill',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Cities Around World",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView.builder(
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.network(
                      img[index],
                      width: 200,
                      height: 150,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' ${name[index]}',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          ' ${subname[index]}',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '${Population[index]}',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )),
                  ],
                ));
          }),
    );
  }
}