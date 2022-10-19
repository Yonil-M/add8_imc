import 'package:app7_imc/home_page.dart';
import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC App',
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          activeTrackColor: Color(0xFFf72585).withOpacity(0.85),
          inactiveTrackColor: Color(0xFF001d3d).withOpacity(0.85),
          thumbColor: Color(0xFFf72585).withOpacity(0.85),
          overlayColor: Color(0xFFf72585).withOpacity(0.85),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
          trackHeight: 8.0,
        ),
      ),
      home: Homepage(),
    );
  }
}