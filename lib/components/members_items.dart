import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/family_members.dart';

class MembersItems extends StatelessWidget {
  const MembersItems({super.key, required this.member});

  final FamilyMembers member;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: const Color(0xff578840),
      child: Row(children: [
        Container(
          color: const Color(0xffFDF4DB),
          child: Image.asset(member.image!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                member.name!,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                member.enName!,
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
              player.play(AssetSource(member.sound!));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ))
      ]),
    );
  }
}
