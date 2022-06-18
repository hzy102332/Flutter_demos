import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

//void main() => runApp(XylophoneApp());
//相当于， 在只有一行的情况下使用
void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playsound (int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildkey(int number, String num,Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(number);
        },
      child: Text(num),
        textColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1,'1',Colors.red),
              buildkey(0,'2',Colors.black),
              buildkey(2,'2',Colors.orange),
              buildkey(0,'2',Colors.black),
              buildkey(3,'3',Colors.yellow),
              buildkey(4,'4',Colors.green),
              buildkey(0,'2',Colors.black),
              buildkey(5,'5',Colors.teal),
              buildkey(0,'2',Colors.black),
              buildkey(6,'6',Colors.blue),
              buildkey(0,'2',Colors.black),
              buildkey(7,'7',Colors.purple),
              buildkey(1,'1',Colors.red),
              buildkey(2,'2',Colors.orange),
              buildkey(3,'3',Colors.yellow),
              buildkey(4,'4',Colors.green),
              buildkey(5,'5',Colors.teal),
              buildkey(6,'6',Colors.blue),
              buildkey(7,'7',Colors.purple),
              buildkey(1,'1',Colors.red),
              buildkey(2,'2',Colors.orange),
              buildkey(3,'3',Colors.yellow),
              buildkey(4,'4',Colors.green),
              buildkey(5,'5',Colors.teal),
              buildkey(6,'6',Colors.blue),
              buildkey(7,'7',Colors.purple),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.red,
//                  onPressed: (){
//                    playsound(1);
//                  },),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.orange,
//                  onPressed: (){
//                    playsound(2);
//                  },),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.yellow,
//                  onPressed: (){
//                    playsound(3);
//                  },),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.green,
//                  onPressed: (){
//                    playsound(4);
//                  },),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.teal,
//                  onPressed: (){
//                    playsound(5);
//                  },),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.blue,
//                  onPressed: (){
//                    playsound(6);
//                  },),
//              ),
//              Expanded(
//                  child: FlatButton(
//                  color: Colors.purple,
//                  onPressed: (){
//                    playsound(7);
//                  },),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
