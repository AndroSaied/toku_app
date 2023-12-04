import 'package:flutter/material.dart';
import 'package:toku/components/colors_item.dart';
import 'package:toku/models/colors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColorsModel> colors = const [
    ColorsModel(
      image: 'assets/images/colors/color_black.png',
      name: 'Burakku',
      enName: 'black',
      sound: 'sounds/colors/black.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_brown.png',
      name: 'Chairo',
      enName: 'brown',
      sound: 'sounds/colors/brown.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      name: 'Hokori ppoi kiiro',
      enName: 'dusty_yellow',
      sound: 'sounds/colors/dustyyellow.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_gray.png',
      name: 'Gure',
      enName: 'gray',
      sound: 'sounds/colors/gray.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_green.png',
      name: 'Midori',
      enName: 'green',
      sound: 'sounds/colors/green.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_red.png',
      name: 'Aka',
      enName: 'red',
      sound: 'sounds/colors/red.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/color_white.png',
      name: 'Shiro',
      enName: 'white',
      sound: 'sounds/colors/white.wav'
    ),
    ColorsModel(
      image: 'assets/images/colors/yellow.png',
      name: 'Ki iro',
      enName: 'yellow',
      sound: 'sounds/colors/yellow.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDF4DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff48342F),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorsItem(color: colors[index]);
        },
        )
      );
  }
}