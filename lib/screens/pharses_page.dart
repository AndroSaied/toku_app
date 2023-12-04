import 'package:flutter/material.dart';
import 'package:toku/components/pharses_items.dart';
import 'package:toku/models/pharses.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});

  final List<Pharses> pharses = const [
    Pharses(
      state: 'Kimasu ka',
      enState: 'Are you coming',
      sound: 'sounds/phrases/are_you_coming.wav'
    ),
    Pharses(
      state: 'Kodoku sure koto o wasurenaide kudasai',
      enState: 'Dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav'
    ),
    Pharses(
      state: 'Go kibun wa ikagadesu ka',
      enState: 'How are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav'
    ),
    Pharses(
      state: 'Puroguramingu ga daisuki',
      enState: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav'
    ),
    Pharses(
      state: 'watashi wa anime ga daisuki',
      enState: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav'
    ),
    Pharses(
      state: 'Puroguramingu wa kantan',
      enState: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav'
    ),
    Pharses(
      state: 'Anata no onamae wa',
      enState: 'What is your name',
      sound: 'sounds/phrases/what_is_your_name.wav'
    ),
    Pharses(
      state: 'Doko ni iku no',
      enState: 'Where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav'
    ),
    Pharses(
      state: 'Hai imamukatteimasu',
      enState: 'Yes im coming',
      sound: 'sounds/phrases/yes_im_coming.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDF1DB),
      appBar: AppBar(
        title: const Text('Pharses'),
        backgroundColor: const Color(0xff47352F),
      ),
      body: ListView.builder(
        itemCount: pharses.length,
        itemBuilder: (context, index) {
          return PharsesItem(state: pharses[index]);
        },
        ),
    );
  }
}