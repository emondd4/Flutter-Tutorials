import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _numberInputIsValid = true;
  final _controller = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: ListView(

          children: [
            //Number Input Field
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

            const SizedBox(height: 20,),

            //Multiline Text Input Field
            TextField(
              controller: this._controller,
              maxLines: 10,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                counterText: "${this._controller.text.split(' ').length} Words",
                labelText: "Enter Multiline Text",
                hintText: "Type Something Here...",
                border: const OutlineInputBorder(),
              ),
              onChanged: (text) => setState(() {

              }),
            ),

            const SizedBox(height: 20,),

            //password Text Input Field
            TextField(
                obscureText: !_showPassword,
              decoration: InputDecoration(
                labelText: "Input Password",
                prefixIcon: Icon(Icons.security),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                }, icon: Icon(Icons.remove_red_eye, color: _showPassword ? Colors.blue : Colors.grey,))
              ),
            ),

            const SizedBox(height: 20,),

            //Borderless Text Input
            const TextField(
              maxLines: 3,
              decoration: InputDecoration.collapsed(hintText: "Enter Something Here"),
            ),
          ],
        ),
      ),
    );
  }
}
