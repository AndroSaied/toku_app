import 'package:flutter/material.dart';
import 'package:toku/models/numbers.dart';
import 'package:audioplayers/audioplayers.dart';

class NumsItem extends StatelessWidget {
  const NumsItem({super.key, required this.num});

  final Numbers num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: const Color(0xffF29347),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF1DE),
            child: Image.asset(num.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  num.numName!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  num.enName!,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(num.sound));
            }, 
            icon: const Icon(Icons.play_arrow,
            color: Colors.white,
            )
            )
        ],
      ),
    );
  }
}
