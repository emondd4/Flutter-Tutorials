import 'package:flutter/material.dart';

import 'Model/Users.dart';
import 'Service/Services.dart';

class JsonFetch extends StatefulWidget {
  const JsonFetch({Key? key}) : super(key: key);

  @override
  _JsonFetchState createState() => _JsonFetchState();
}

class _JsonFetchState extends State<JsonFetch> {
  late List<Users> _users;
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? "Loading..." : "Users"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: null == _users ? 0 : _users.length,
            itemBuilder: (context, index) {
              Users user = _users[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            }),
      ),
    );
  }
}
