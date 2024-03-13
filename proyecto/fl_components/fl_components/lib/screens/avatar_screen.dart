import 'package:flutter/material.dart';


class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900]
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 180,
          backgroundImage: NetworkImage('https://www.lavanguardia.com/files/image_948_465/uploads/2024/03/08/65eae24dc4fc6.png'),
        ),
      ),
    );
  }
}