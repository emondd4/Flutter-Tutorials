import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Box friendBox = Hive.box("friend");
  String? friendName;

  addFriend() async {
    await friendBox.put("name", "Bill Gates");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Friend Added")));
  }

  retrieveFriend() async {
    setState(() {
      friendName = friendBox.get("name");
    });
  }

  updateFriend() async {
    await friendBox.put("name", "Elon Masks");
    setState(() {
      friendName = friendBox.get("name");
    });
  }

  deleteFriend() async {
    await friendBox.delete("name");
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Friend Deleted")));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hive Database CRUD"),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(friendName == null ? "Not Inserted" : "$friendName"),
              const SizedBox(height: 15.0,),
              ElevatedButton(onPressed: addFriend, child: const Text("Create")),
              const SizedBox(height: 15.0,),
              ElevatedButton(onPressed: retrieveFriend, child: const Text("Retrieve")),
              const SizedBox(height: 15.0,),
              ElevatedButton(onPressed: updateFriend, child: const Text("Update")),
              const SizedBox(height: 15.0,),
              ElevatedButton(onPressed: deleteFriend, child: const Text("Delete")),
              const SizedBox(height: 15.0,),
            ],
          ),
        ),
      ),
    );
  }
}
