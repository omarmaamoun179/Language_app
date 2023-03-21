import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:taku/model/number_class.dart';

class item extends StatelessWidget {
  const item({super.key, required this.number, required this.color, required this.itemType});
  final model number;
  final Color color;
  final String itemType; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6CD),
            child: Image.asset(
              number.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(number.sound);
            },
            icon: Icon(Icons.play_arrow, size: 32, color: Colors.white),
          )
        ],
      ),
    );
  }
}
class Phrases extends StatelessWidget {
  
   const Phrases({super.key, required this.number, required this.color, required this.itemType});
  final model number;
  final Color color;
  final String itemType; 

  @override
  Widget build(BuildContext context) {
     return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6CD),
            
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(number.sound);
            },
            icon: Icon(Icons.play_arrow, size: 32, color: Colors.white),
          )
        ],
      ),
    );
  }
  }
