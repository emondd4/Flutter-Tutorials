import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';


class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlay = false;
  String duration = "00:00";
  String position = "00:00";

  @override
  void initState() {
    super.initState();
    audioPlayer.onDurationChanged.listen((event) {
      duration = event.toString().split(".")[0];
    });

    audioPlayer.onAudioPositionChanged.listen((event) {
      position = event.toString().split(".")[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.audiotrack),
        onPressed: () async{
          FilePickerResult? result =await FilePicker.platform.pickFiles();

          if(result != null){
            await audioPlayer.play(result.files.single.path!,isLocal: true);
            setState(() {
              isPlay = true;
            });
          }
        },
      ),
      appBar: AppBar(
        title: Text(
          "Music Player",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff808e95),
        toolbarHeight: 70,
        centerTitle: true,
        elevation: 50.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                      image: AssetImage("images/mask.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  Text(
                    "60'S Love",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Singer Name: Level Five",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 300,
              child: Column(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (isPlay == true) {
                                audioPlayer.pause();
                                setState(() {
                                  isPlay = false;
                                });
                              } else {
                                audioPlayer.resume();
                                setState(() {
                                  isPlay = true;
                                });
                              }
                            },
                            icon: Icon(
                              isPlay == false ? Icons.play_arrow : Icons.pause,
                              size: 35,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                audioPlayer.stop();
                                isPlay = false;
                              });
                            },
                            icon: Icon(
                              Icons.stop,
                              size: 35,
                            ),
                          ),
                          Text(
                            position,
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "----",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            duration,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 2,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
