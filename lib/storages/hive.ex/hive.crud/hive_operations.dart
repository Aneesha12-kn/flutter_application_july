

import 'package:flutter/material.dart';
import 'package:flutter_application_july/list%20view%20example.dart/listviewbuild.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(home:hiveTodo(),));
}

class hiveTodo extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_HiveTodoState();
   }
class _HiveTodoState extends State<hiveTodo>{

  List<Map<String,dynamic>> task = [];

  final my_box= Hive.box('todo_box');
  
  @override
  void iniState(){
    readTask_refreshUi();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My Task"),
      ),
      body:task.isEmpty
      ?Center(child:CircularProgressIndicator())
      :GridView.builder(
        itemCount: task.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (context,index){
        return Card(
          color: Colors.primaries[index%Colors.primaries.length],
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
             
              Text(
               '${task[index]['taskname']}',
                style: GoogleFonts.habibi(fontSize: 20),),
              SizedBox(
                
                height: 10,
              ),
              
              Text(
               '${task[index]['taskdesc']}',
                style: GoogleFonts.habibi(fontSize: 15),),
Text('${date}',style: GoogleFonts.habibi(fontSize: 15),),

              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                IconButton(onPressed: ()=>showAlertbox(task[index]['id']), icon: Icon(Icons.edit)),
                IconButton(onPressed: ()=>deleteTask(task[index]['id']), icon: Icon(Icons.delete)),
              ],
              ))
            ],
          )
        );
      }
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> showAlertbox(null) ,
       child: Icon(Icons.task),),
    );
  }
  final title_cntrl=TextEditingController();
  final descr_cntrl=TextEditingController();

  void showAlertbox(int? key){  ///key is similar to id in sqflite
  if(key !=null){
    final existing_task=task.firstWhere((element) => element['id']==key);
    title_cntrl.text =existing_task['taskname'];
    descr_cntrl.text =existing_task['taskdesc'];
  }

showDialog(
  context: context,
 builder: (context){
  return AlertDialog(
    content: Column(
    mainAxisSize: MainAxisSize.min,
    
    children: [
      TextField(
        decoration: InputDecoration(border: OutlineInputBorder(),hintText: "title"),
        controller: title_cntrl,
      ),

SizedBox(height: 10,),

      TextField(
        decoration: InputDecoration(border: OutlineInputBorder(),hintText: "content"),
        controller: descr_cntrl,
      ),
    ],
  ),
  actions: [
TextButton(onPressed: (){
  if(title_cntrl.text !="" && descr_cntrl.text !=""){
    createTask({
      'tname':title_cntrl.text.trim(),
      'tcontent':descr_cntrl.text.trim(),
    });
  }
  title_cntrl.text="";
  descr_cntrl.text="";

}, child: Text("Create Task"),),

TextButton(onPressed: (){
  updateTask(key,{
    'tname' :title_cntrl.text.trim(),
    'tcontent':descr_cntrl.text.trim(),
    
  });
  
  }, child: Text("Update Task"),),
TextButton(onPressed: (){
  Navigator.pop(context);
}, child: Text("Cancel"))
  ],
  );
});
  }
  Future<void>createTask(Map<String,dynamic>mytask)async{
    await my_box.add(mytask);
    readTask_refreshUi();
  }

  void readTask_refreshUi(){
  final task_from_hive = my_box.keys.map((key){
    
    final value = my_box.get(key);

    return {
      'id' : key,
      'taskname': value['taskname'],
      'taskdesc' : value['taskdesc'],
    };
  }).toList();

  setState(() {
    task=task_from_hive.reversed.toList();
  });
}
Future<void> updateTask(int?key,Map<String,dynamic>updateTask)async{
  await my_box.put(key, updateTask);
  readTask_refreshUi();
}

Future<void>deleteTask(int key)async{
  await my_box.delete(key);
  readTask_refreshUi();
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text("successfully deleted")),
  );
}
}