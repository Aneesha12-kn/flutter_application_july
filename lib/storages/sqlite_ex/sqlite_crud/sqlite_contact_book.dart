import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sql_function.dart';



void main() {
  runApp(const MaterialApp(
    home: ContactBook(),
  ));
}

class ContactBook extends StatefulWidget {
  const ContactBook({super.key});

  @override
  State<ContactBook> createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  List<Map<String, dynamic>> contacts = [];
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyContacts'),
      ),
      body: isLoading
          ? Text(
              "Create New Contact",
              style: GoogleFonts.sansita(fontSize: 25),
            )

          : ListView.builder(
              itemCount: contacts.length,

              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          Colors.primaries[index % Colors.primaries.length],
                        child: const Icon(Icons.person),
                    ),
                    title: Text(contacts[index]['cname']),
                    subtitle: Text(contacts[index]['cnumber']),
                    trailing: Wrap(

                      children: [

                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),

      floatingActionButton: FloatingActionButton(
        onPressed: () => showsheet(null),
        child: const Icon(Icons.person_add_alt_1_outlined),

      ),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();
  void showsheet(int? id) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                  ),
                ),
                TextField(
                  controller: num_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone",
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (id == null) {
                        createContact(
                            name_controller.text, num_controller.text);
                      }
                      if (id != null) {
                        //updateContact();
                      }
                      name_controller.text = "";
                      num_controller.text = "";
                    },
                    child:
                        Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact(String name, String number) async {
    await SQL_Functions.addnewContact(name, number);
    readContact_and_refresh_Ui();
  }

  void initState() {
    super.initState();
    readContact_and_refresh_Ui();
  }

  Future<void> readContact_and_refresh_Ui() async {
    final mycontacts = await SQL_Functions.readContacts();
    setState(() {
      contacts = mycontacts;
      isLoading = false;
      });}}