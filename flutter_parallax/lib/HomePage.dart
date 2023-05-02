import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  double _layer1Speed = 0.5;
  double _layer2Speed = 0.45;
  double _layer3Speed = 0.42;
  double _layer4Speed = 0.375;
  double _layer5Speed = 0.325;
  double _sunSpeed = 0.25;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() {
      _onScroll();
    });
    super.initState();
  }

  void _onScroll(){
    setState(() {
      _scrollOffset = _scrollController.offset;
      debugPrint(_scrollOffset.toString());
    });
  }

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    var layoutHeight = screenSize.height * 3;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255,66,240,210),
                Color.fromARGB(255,253,244,193),
              ]
          )
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: _layer5Speed * _scrollOffset,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/mountains-layer-4.svg"),
            ),
            Positioned(
              bottom: _layer4Speed * _scrollOffset,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/mountains-layer-3.svg"),
            ),
            Positioned(
              bottom: _layer3Speed * _scrollOffset,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/mountains-layer-2.svg"),
            ),
            Positioned(
              bottom: -20 + _layer2Speed * _scrollOffset,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/trees-layer-2.svg"),
            ),
            Positioned(
              bottom: -60 + _layer1Speed * _scrollOffset,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/layer-1.svg"),
            ),
            Positioned(
              bottom: screenSize.height * 0.5 + (_sunSpeed * _scrollOffset),
              left: screenSize.width * 0.3,
              right: 0,
              child: SvgPicture.asset("assets/sun.svg"),
            ),
            Positioned(
              top: screenSize.height + (_layer1Speed * _scrollOffset * - 1),
              left: 0,
              right: 0,
              height: screenSize.height,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255,66,240,210),
                          Color.fromARGB(255,253,244,193),
                        ]
                    )
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/mountains-layer-4.svg"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/mountains-layer-3.svg"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/mountains-layer-2.svg"),
                    ),
                    Positioned(
                      bottom: -20,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/trees-layer-2.svg"),
                    ),
                    Positioned(
                      bottom: -60,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/layer-1.svg"),
                    ),
                    Positioned(
                      bottom: screenSize.height * 0.5,
                      left: screenSize.width * 0.3,
                      right: 0,
                      child: SvgPicture.asset("assets/sun.svg"),
                    ),
                    Positioned(
                      top: screenSize.height * 0.15,
                      left: 10,
                      right: 0,
                      child: Text("Welcome\nto\nParallax Effect.",style: TextStyle(fontSize: 35.0,color: Colors.black,fontWeight: FontWeight.w800),),
                    ),
                    Positioned(
                      top: screenSize.height * 0.45,
                      left: 10,
                      right: 0,
                      child: Text("Hello folks, This is just a basic demo of how parallax effect works. Hope there will be more of parallax effect in future.",style: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.w600),),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Padding(padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0), child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.w500),),),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned.fill(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: SizedBox(
                    height: layoutHeight,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
