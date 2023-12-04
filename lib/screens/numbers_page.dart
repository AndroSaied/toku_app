import 'package:flutter/material.dart';
import 'package:toku/components/nums_item.dart';
import 'package:toku/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Numbers> nums = const [
    Numbers(
        numName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png', 
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Numbers(
        numName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png', 
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Numbers(
        numName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png', 
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Numbers(
        numName: 'shi',
        enName: 'four',
        image: 'assets/images/numbers/number_four.png', 
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Numbers(
        numName: 'go',
        enName: 'five',
        image: 'assets/images/numbers/number_five.png', 
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Numbers(
        numName: 'roku',
        enName: 'six',
        image: 'assets/images/numbers/number_six.png', 
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Numbers(
        numName: 'sebun',
        enName: 'seven',
        image: 'assets/images/numbers/number_seven.png', 
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Numbers(
        numName: 'hachi',
        enName: 'eight',
        image: 'assets/images/numbers/number_eight.png', 
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Numbers(
        numName: 'ku',
        enName: 'nine',
        image: 'assets/images/numbers/number_nine.png', 
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Numbers(
        numName: 'juu',
        enName: 'ten',
        image: 'assets/images/numbers/number_ten.png', 
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDF1DE),
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff47332c),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return NumsItem(num: nums[index]);
        },
      ),
    );
  }
}
