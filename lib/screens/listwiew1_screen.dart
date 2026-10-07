import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Naruto',
    'Full Metal',
    'Dragon Ball Z',
    'Ranma 1/2',
    'Inuyasha'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView type 1')),
      body: ListView(
        children: [
          ...options
              .map((name) => ListTile(
                    title: Text(name),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
