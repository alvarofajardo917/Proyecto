import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      child: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit:BoxFit.cover,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${index + 1}')
            );
          },
        ),
      ),
    );
  }
}
