import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.indigo[900],
            child: const Text('SL'),
          ),
        ),
      ]),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
          'https://styles.redditmedia.com/t5_4pg431/styles/profileIcon_dg6f6yrz9zg71.jpg?width=256&height=256&frame=1&crop=256:256,smart&s=68a99fec79427f249c3c4b68d7bd9ef2da2d51c1',
        ),
      )),
    );
  }
}
