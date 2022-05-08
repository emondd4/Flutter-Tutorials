import 'package:flutter/material.dart';

import 'FormModel.dart';
import 'HomePagePresenter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _FormKey = GlobalKey<FormState>();

  FormModel? _formModel;
  HomePagePresenter? _presenter;


  @override
  void initState() {
    _formModel = FormModel("", "");
    _presenter = HomePagePresenter(context,_formModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const Text("Form Validation Example"), centerTitle: true,),
      body: _form(),
    ));
  }

  Widget _form(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,30.0,10.0,30.0),
      child: Form(
        key: _FormKey,
        child: Column(
          children: [
            _emailInput(),
            const SizedBox(height: 20.0,),
            _passInput(),
            const SizedBox(height: 30.0,),
            ElevatedButton(onPressed: () {
              _presenter!.userValidate(_FormKey.currentState!.validate());
              // if (_FormKey.currentState!.validate()) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Processing Data')),
              //   );
              // }
              debugPrint("Email ${_formModel!.email}");
              debugPrint("Password ${_formModel!.password}");
            }, child: const Text("Check Validation"))
          ],
        ),
      ),
    );
  }

  Widget _emailInput(){
    return TextFormField(
        decoration: const InputDecoration(
          hintText: "Enter Email"
        ),
      onChanged: (value){
        _formModel!.email = value;
      },
      validator: _presenter!.emailValidation(),
      controller: TextEditingController(text: _formModel!.emailValue),
    );
  }

  Widget _passInput(){
    return TextFormField(
      decoration: const InputDecoration(
          hintText: "Enter Password"
      ),
      onChanged: (value){
        _formModel!.password = value;
      },
      validator: _presenter!.passwordValidation(),
      controller: TextEditingController(text: _formModel!.passValue),
    );
  }


}
