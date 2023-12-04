import 'package:flutter/material.dart';
import 'package:toku/components/members_items.dart';
import 'package:toku/models/family_members.dart';

class FamilyMempersPage extends StatelessWidget {
  const FamilyMempersPage({super.key});

  final List<FamilyMembers> members = const[
    FamilyMembers(
        image: 'assets/images/family_members/family_father.png',
        name: 'Chichioya',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_mother.png',
        name: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_daughter.png',
        name: 'Musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_son.png',
        name: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_grandfather.png',
        name: 'Ojisan',
        enName: 'Grand Father',
        sound: 'sounds/family_members/grandfather.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_grandmother.png',
        name: 'Sobo',
        enName: 'Grand Mother',
        sound: 'sounds/family_members/grandmother.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_older_brother.png',
        name: 'Ani',
        enName: 'Older Brother',
        sound: 'sounds/family_members/olderbother.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_older_sister.png',
        name: 'Ane',
        enName: 'Older Sister',
        sound: 'sounds/family_members/oldersister.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_younger_brother.png',
        name: 'Otouto',
        enName: 'Younger Brother',
        sound: 'sounds/family_members/youngerbrohter.wav'),
    FamilyMembers(
        image: 'assets/images/family_members/family_younger_sister.png',
        name: 'Imouto',
        enName: 'Younger Sister',
        sound: 'sounds/family_members/youngesister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDF4DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff48342F),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return MembersItems(member: members[index],);
        },
      )
    );
  }
}
