import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children:[

          Slider(
            min:50,
            max:400,
            activeColor: AppTheme.primary,
            //divisions: 10, //divisiones segmentados 
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;
              setState(() {
                
              });;
            }
          )
          ]
      ),
    );
  }
}