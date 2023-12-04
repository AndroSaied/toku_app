import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/pharses_page.dart';
import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdf1db),
      appBar: AppBar(
        title: const Text("Toku"),
        backgroundColor: const Color(0xff48342f),
      ),
      body: Column(
        children: [
          Category(
            color: const Color(0xfff29347),
            text: 'Numbers',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          Category(
            color: const Color(0xff577D40), 
            text: 'Family Members',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMempersPage();
              }));
            },
            ),
          Category(
            color: const Color(0xff7A469B), 
            text: 'Colors',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            ),
          Category(
            color: const Color(0xff54A3C6), 
            text: 'Pharses',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PharsesPage();
              }));
            },
            ),
        ],
      ),
    );
  }
}
