import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double peso=70.0;
  double altura=100.0;
  double imc=0;
  String diagnostico='Normal';
  String recomendacion='Sigue haciendo deporte';

  calculadoraImc(){
    imc=peso/pow((altura/100), 2);
    setState(() {});
    if(imc<18.5){
      return diagnostico='Bajo'; 
    }else{
      if(imc<24.9) {
      return diagnostico='Normal';
    }else{return diagnostico='Sobrepeso';}
    }

    if(imc<18.5){
      return recomendacion='Visita un nutricionista'; 
    }else{
      if(imc<24.9) {
      return recomendacion='Sigue haciendo deporte';
    }else{return recomendacion='Debes comer mas sano y realizar actividad fisica';}
    }
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001d3d),
        title: Text("IMC App"),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bienvenido, selecciona tu peso y talla:",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Manrope',
              color: Color(0xFF001d3d).withOpacity(0.80),
            ),),
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(peso.toInt().toString(),
                style:TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 38.0,
                  color: Color(0xFF001d3d).withOpacity(0.80),
                ) 
                ,),
                Text("Kg",
                style:TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16.0,
                  color: Color(0xFF001d3d).withOpacity(0.80),),
                  )
              ],
            ),

            Slider(value: peso,min: 20,max: 200,
            onChanged: (double value){
              peso=value;
              setState(() {
                
              });
            },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(altura.toInt().toString(),
                style:TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 38.0,
                  color: Color(0xFF001d3d).withOpacity(0.80),
                ) 
                ,),
                Text("Cm",
                style:TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16.0,
                  color: Color(0xFF001d3d).withOpacity(0.80),),
                  )
              ],
            ),

            Slider(value: altura,min: 100,max: 220,
            onChanged: (double value){
              altura=value;
              setState(() {
                
              });
            },
            ),
            SizedBox(height: 10.0,),
            SizedBox(
              width: double.infinity,
              height: 50.0,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF001d3d),
              ),
              onPressed: () {
                calculadoraImc();
              },
              icon: Icon(Icons.play_arrow),label: Text("Calcular",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),) ,),
            ),

            SizedBox(height: 10.0,),

            Divider(
              thickness: 2,
            ),
            
            SizedBox(height: 10.0,),

            Text("Resultado",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Color(0xF001d3d).withOpacity(0.85),
            ),
            ),
            
            Center(
              child: Image.asset('assets/images/imagen1.png',
              height: 180.0,width: 180.0,
              fit: BoxFit.contain, 
              ),
              
            ),
            SizedBox(height: 10.0,),

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Text(imc.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xF001d3d).withOpacity(0.85),
                  ),),

                  Text(diagnostico.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xF001d3d).withOpacity(0.85),
                  ),),
                  Text(recomendacion.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xF001d3d).withOpacity(0.85),
                  ),),
                ],
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}