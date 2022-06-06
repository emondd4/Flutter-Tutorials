import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/FirebaseMethods/Methods.dart';
import 'package:flutter_firebase_chat/UI/ChatScreen.dart';
import 'package:flutter_firebase_chat/UI/LoginScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map<String, dynamic>? userMap;
  bool isLoading = false;
  final TextEditingController _search = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  String chatRoomId(String user1, String user2) {

    if (user1[0].toLowerCase().codeUnits[0] >=
        user2[0].toLowerCase().codeUnits[0]) {
      return "${user1[0].toLowerCase().codeUnits[0]}${user2[0].toLowerCase().codeUnits[0]}";
    } else {
      return "${user2[0].toLowerCase().codeUnits[0]}${user1[0].toLowerCase().codeUnits[0]}";
    }
  }

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    setState(() {
      isLoading = true;
    });

    await _firestore
        .collection('users')
        .where("email", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isLoading = false;
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: () => logout().then((value) => {
            if (value == null) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()))
            }
          }))
        ],
      ),
      body: isLoading
          ? Center(
        child: Container(
          height: size.height / 20,
          width: size.height / 20,
          child: const CircularProgressIndicator(),
        ),
      )
          : Column(
        children: [
          SizedBox(
            height: size.height / 20,
          ),
          Container(
            height: size.height / 14,
            width: size.width,
            alignment: Alignment.center,
            child: SizedBox(
              height: size.height / 14,
              width: size.width / 1.15,
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 50,
          ),
          ElevatedButton(
            onPressed: onSearch,
            child: const Text("Search"),
          ),
          SizedBox(
            height: size.height / 30,
          ),
          userMap != null
              ? ListTile(
            onTap: () {
              String roomId = chatRoomId(_auth.currentUser!.displayName!, userMap!['name']);

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ChatPage(
                    chatRoomId: roomId,
                    userMap: userMap!,
                  ),
                ),);
              }, leading: Icon(Icons.account_box, color: Colors.black), title: Text(
              userMap!['name'],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ), subtitle: Text(userMap!['email']), trailing: Icon(Icons.chat, color: Colors.black),
          )
              : Container(),
        ],
      ),
    );
  }

}
