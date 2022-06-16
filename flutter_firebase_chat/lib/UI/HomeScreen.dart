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
  late bool _isLoading;

  Map<String, dynamic>? userMap;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          InkWell(
            child: const Icon(Icons.logout),
            onTap: () {
              logout().then((user) => {
                    if (user == null)
                      {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()))
                      }
                  });
            },
          )
        ],
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: "Search"),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _isLoading = true;
                                });
                                _searchUser();
                              },
                              child: const Text("Search")),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      userMap != null
                          ? ListTile(
                              onTap: () {
                                String roomId = chatRoomId(
                                    _firebaseAuth.currentUser!.email!,
                                    userMap!['email']);

                                print(roomId);
                                print("${userMap!['uid']}");

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => ChatPage(
                                      chatRoomId: roomId,
                                      userMap: userMap!,
                                    ),
                                  ),
                                );
                              },
                              leading: const Icon(Icons.account_box,
                                  color: Colors.black),
                              title: Text(
                                userMap!['name'],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(userMap!['email']),
                              trailing:
                                  const Icon(Icons.chat, color: Colors.black),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  void _searchUser() async {
    await _firestore
        .collection('users')
        .where("email", isEqualTo: _searchController.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        _isLoading = false;
      });
      debugPrint(userMap.toString());
    });
  }

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >=
        user2[0].toLowerCase().codeUnits[0]) {
      return "${user1[0].toLowerCase().codeUnits[0]}${user2[0].toLowerCase().codeUnits[0]}";
    } else {
      return "${user2[0].toLowerCase().codeUnits[0]}${user1[0].toLowerCase().codeUnits[0]}";
    }
  }
}
