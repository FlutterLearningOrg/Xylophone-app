import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){

  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: music(),
      ),
    );
  }
}

class music extends StatefulWidget {
  @override
  _musicState createState() => _musicState();
}

class _musicState extends State<music> {

  void playmusic(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(

              color: Colors.red,
              onPressed: (){
                playmusic(1);
              },

            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.orange,
              onPressed: (){
                playmusic(2);
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.yellow,
              onPressed: (){
                playmusic(3);
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.green,
              onPressed: (){
                playmusic(4);
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.teal,
              onPressed: (){
                playmusic(5);
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.blue,
              onPressed: (){
                playmusic(6);
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              color: Colors.purple ,
              onPressed: (){
                playmusic(7);
              },
            ),
          ),
        ],

      ),
    );
  }
}



