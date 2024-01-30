import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_recommended.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ItemRec(
              'Электрическая варочная\nповерхность MAUNFELD\nEEHE.32.4B',
              '1 750 000 сум',
              'assets/item.png',
            ),
            ButtonOrange('Смотреть все 15'),
            SizedBox(height: 100,),
            Catalog()
          ],
        ),
      ),
    );
  }
}
