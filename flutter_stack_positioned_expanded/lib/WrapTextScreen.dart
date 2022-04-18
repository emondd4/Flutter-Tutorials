import 'package:flutter/material.dart';

class WrapTextPage extends StatefulWidget {
  const WrapTextPage({Key? key}) : super(key: key);

  @override
  _WrapTextPageState createState() => _WrapTextPageState();
}

class _WrapTextPageState extends State<WrapTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 120.0,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/introduction.png")),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Please Select Add Bale Option to add a new bale to list...",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                      color: Colors.black26),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Colors.black26,
                                width: 2.0,
                              ),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: const Text('Add Bale'),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
