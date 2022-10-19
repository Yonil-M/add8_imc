import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001d3d),
        title: Text("IMC App"),
        
      ),
      body: Column(
        children: [
          Text("Bienvenido, selecciona tu peso y talla:"),
          
        ],
      ),
    );
  }
}