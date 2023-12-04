import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/pharses.dart';

class PharsesItem extends StatelessWidget {
  const PharsesItem({super.key, required this.state});

  final Pharses state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color(0xff2FA5BA),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.state!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  state.enState!,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(state.sound!));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
