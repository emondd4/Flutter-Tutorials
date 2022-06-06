import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/UI/HomeScreen.dart';
import 'package:flutter_firebase_chat/UI/RegisterScreen.dart';
import '../FirebaseMethods/Methods.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late TextEditingController _emailController;
  late TextEditingController _passController;
  late bool _isLoading;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _isLoading = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _isLoading? Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 20,
              child: const CircularProgressIndicator(),
            ),
          ) : SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0,),
              const Text(
                "Welcome To Firebase Chat",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 32.0,
                    color: Colors.black),
              ),
              const SizedBox(height: 5.0,),
              const Text(
                "This Application is Fully Made With Firebase and Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.black38),
              ),
              const SizedBox(height: 100.0,),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email Here",
                  labelText: "Email"
                ),
              ),
              const SizedBox(height: 10.0,),
              TextField(
                controller: _passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password Here",
                    labelText: "Password"
                ),
              ),
              const SizedBox(height: 30.0,),
              SizedBox(height: 43, width: double.infinity,child: ElevatedButton(onPressed: () {

                setState(() {
                  _isLoading = true;
                });

                if(_emailController.text.isNotEmpty && _passController.text.isNotEmpty){
                  login(_emailController.text,_passController.text).then((user) => {
                    if(user != null){
                      debugPrint("Login Successful"),
                      setState(() {
                        _isLoading = false;
                        _emailController.text = "";
                        _passController.text = "";
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                      })
                    }else{
                      setState(() {
                        _isLoading = false;
                      }),
                      debugPrint("Login Failed")
                    }
                  });
                }else{
                  debugPrint("Please Fill Form");
                }
              }, child: const Text("Login", style: TextStyle(fontSize: 15.0),),)),
              const SizedBox(height: 20.0,),
              const Center(child: Text("Or", style: TextStyle(fontSize: 15.0),)),
              const SizedBox(height: 20.0,),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterPage()));
                  },
                  child: const Text("Create Account", style: TextStyle(fontSize: 15.0, color: Colors.blue),),
                ),
              )
            ],
          ),
        ),
          )
      ),
    );
  }
}
