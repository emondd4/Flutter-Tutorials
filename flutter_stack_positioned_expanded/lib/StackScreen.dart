import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset("assets/images/information.png")),
                Positioned(
                  top: 30,
                  bottom: 30,
                  left: 30,
                  right: 30,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width - 20,
                    height: 150,
                    child: SizedBox(
                      height: 130.0,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child:
                                  Image.asset("assets/images/introduction.png")),
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
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                            color: Colors.black26,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      backgroundColor: MaterialStateProperty.all(
                                          Colors.transparent)),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
