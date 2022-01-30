import 'package:flutter/material.dart';
import 'package:flutter_list_api/Model/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future getUserData() async {
    var url = Uri.https("jsonplaceholder.typicode.com", "/users");
    var response = await http.get(url);

    var jsonResponse = convert.jsonDecode(response.body);
    List<User> users = [];

    for (var i in jsonResponse) {
      User user = User(i["name"], i["email"], i["username"]);
      users.add(user);
    }

    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Api Example"),
        centerTitle: true,
      ),
      body: Card(
        child: FutureBuilder(
          future: getUserData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, position) {
                    return ListTile(
                      title: Text(snapshot.data[position].name),
                      subtitle: Text(snapshot.data[position].userName),
                      trailing: Text(snapshot.data[position].email),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
