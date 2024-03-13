import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), //bordes 
        children: const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name:'Un Hermoso Paisaje', imageUrl:'https://s1.1zoom.me/big3/323/Lake_Mountains_Winter_438866.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name:'El Paisaje',imageUrl: 'https://c4.wallpaperflare.com/wallpaper/205/229/303/hielo-invernal-lago-naturaleza-wallpaper-preview.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://i.etsystatic.com/43678560/r/il/25ba49/5143876711/il_570xN.5143876711_sidr.jpg'),
          SizedBox(height: 100),

        ],
      )
    );
  }
}

