import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/colors.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});

  final ColorsModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: const Color(0xff8131C6),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF4DB),
            child: Image.asset(color.image!),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    color.name!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    color.enName!,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              )),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(color.sound!));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              )
          )
        ],
      ),
    );
  }
}
