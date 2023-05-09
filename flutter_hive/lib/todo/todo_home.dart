import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../todo_model/todo.dart';
import 'add_screen.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {

  Box todoBox = Hive.box<Todo>("todo");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hive Todo"),
        ),
        body: ValueListenableBuilder(valueListenable: todoBox.listenable(),
            builder: (context,Box box, widget){
              if(box.isEmpty){
                return const Center(child: Text("No Todo Added Yet"),);
              }else{
                return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context,index){
                    Todo todo = box.getAt(index);
                    return ListTile(
                      title: Text(todo.title,style: TextStyle(
                        fontSize: 17.0,
                        color: todo.isCompleted ? Colors.green : Colors.black,
                        decoration: todo.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                      ),),
                      leading: Checkbox(value: todo.isCompleted, onChanged: (value) {
                        Todo updateTodo = Todo(title: todo.title, isCompleted: value!);
                        box.put(index, updateTodo);
                      }),
                      trailing: InkWell(
                        onTap: () {
                          box.deleteAt(index);
                        },
                          child: const Icon(Icons.delete,color: Colors.red,)
                      ),
                    );
                  },
                );
              }
            }),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTodo()),
          );
        }, child: const Icon(Icons.add,color: Colors.white,),),
      ),
    );
  }
}
