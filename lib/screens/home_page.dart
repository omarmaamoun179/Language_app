import 'package:flutter/material.dart';
import 'package:taku/components/categories.dart';
import 'package:taku/screens/colors_page.dart';
import 'package:taku/screens/family_member_page.dart';
import 'package:taku/screens/number_page.dart';
import 'package:taku/screens/phrases_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'toku',
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => NumbersPage()),
                  ));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => familyMemberPage()),
                  ));
            },
            text: 'Family Mebmers',
            color: Colors.greenAccent,
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ColorsPage()),
                  ));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PhrasesPage()),
                  ));
            },
            text: 'Phrases',
            color: Color.fromARGB(255, 68, 171, 255),
          ),
        ],
      ),
    );
  }
}
