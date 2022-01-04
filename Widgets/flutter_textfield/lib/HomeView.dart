import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _numberInputIsValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            TextField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline4,
              decoration: InputDecoration(
                icon: const Icon(Icons.attach_money),
                labelText: 'Enter An Integer',
                errorText: _numberInputIsValid ? null : "Please Enter An Integer",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              onSubmitted: (val) =>
                Fluttertoast.showToast(msg: "You Entered: ${int.parse(val)}"),
              onChanged: (String val ) {
                final v  = int.tryParse(val);
                debugPrint('parsed value =$v');
                if (v == null){
                    setState(() {
                      _numberInputIsValid = false;
                    });
                }else{
                    setState(() {
                      _numberInputIsValid = true;
                    });
                }
              },
            ),
        ],
      ),
    );
  }
}
