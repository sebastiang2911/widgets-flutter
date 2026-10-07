// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Naruto',
    'Full Metal',
    'Dragon Ball Z',
    'Ranma 1/2',
    'Inuyasha'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView type 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (BuildContext context, int i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.amber,
                  ),
                  onTap: () => {},
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
