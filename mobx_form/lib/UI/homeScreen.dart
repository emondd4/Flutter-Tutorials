import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../Store/form_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final FormStore store = FormStore();

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    store.setupValidations();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Mobx Form Validation"),centerTitle: true,),
      body: _appBody(),
    );
  }

  Widget _appBody(){
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.name = value,
                decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Pick a username',
                    errorText: store.error.username),
              ),
            ),
            Observer(
                builder: (_) => AnimatedOpacity(
                    child: const LinearProgressIndicator(),
                    duration: const Duration(milliseconds: 300),
                    opacity: store.isUserCheckPending ? 1 : 0)),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.email = value,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email address',
                    errorText: store.error.email),
              ),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.password = value,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Set a password',
                    errorText: store.error.password),
              ),
            ),
            ElevatedButton(
              child: const Text('Sign up'),
              onPressed: store.validateAll,
            )
          ],
        ),
      ),
    );
  }

}
