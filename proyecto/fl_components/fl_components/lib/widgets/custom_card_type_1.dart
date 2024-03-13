import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Ex est ex non proident nisi esse in. Magna sit reprehenderit eiusmod elit dolor anim enim anim sit. Quis ad excepteur nisi ea ex elit exercitation aliqua fugiat irure.'),
        ),

        Padding(
          padding: const EdgeInsets.only(right:5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ],
    ));
  }
}
