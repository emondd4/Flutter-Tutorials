import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../todo_model/todo.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  late TextEditingController titleController;
  Box todoBox = Hive.box<Todo>("todo");

  @override
  void initState() {
    titleController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Todo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter Title',
                    hintText: 'Enter Your Todo Title'
                ),
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){
                if(titleController.text.isNotEmpty){
                  Todo todo = Todo(title: titleController.text.toString().trim(), isCompleted: false);
                  todoBox.add(todo);
                  Navigator.pop(context);
                }
              }, child: const Text("Add Todo")),
            ],
          ),
        ),
      ),
    );
  }
}
