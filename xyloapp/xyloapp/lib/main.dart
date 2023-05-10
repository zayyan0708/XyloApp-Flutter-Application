// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int num) {
    final player = AudioPlayer();
    player.setSource(AssetSource('assets_note$num.wav'));
    player.play(AssetSource('assets_note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.orange[700],
                onPressed: () {
                  playSound(2);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.green[700],
                onPressed: () {
                  playSound(4);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.green[900],
                onPressed: () {
                  playSound(5);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
                child: Row(),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
                child: Row(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}






//  child: FlatButton(
//               onPressed: () {
//                 final player = AudioPlayer();
//                 player.setSource(AssetSource('assets_note2.wav'));
//                 player.play(AssetSource('assets_note2.wav'));
//               },
//               child: Text('click Me'),
//             ),