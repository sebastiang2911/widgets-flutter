import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card')),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType(),
            CustomCardType2(imageUrl: 'https://picsum.photos/seed/3/500/300'),
            SizedBox(height: 20),
            CustomCardType(),
            CustomCardType2(
              imageUrl: 'https://picsum.photos/seed/2/500/300',
              nameCard: 'Desktop',
            ),
            SizedBox(height: 20),
            CustomCardType(),
            CustomCardType2(
              imageUrl: 'https://picsum.photos/seed/1/500/300',
              nameCard: 'Build',
            ),
            SizedBox(height: 100),
          ]),
    );
  }
}
