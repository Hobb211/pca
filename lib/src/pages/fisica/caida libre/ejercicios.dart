import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
//pregunta 1
int velocidadP1=random.nextInt(100);
double respuestaP1=1/2*9.8*pow((velocidadP1/9.8), 2);
//pregunta 2
int tiempoP2=random.nextInt(50);
double respuestaP2=1/2*9.8*pow(tiempoP2, 2);
//pregunta 3
int tiempoP3=random.nextInt(50);
double respuestaP3A=9.8*tiempoP3;
double respuestaP3B=1/2*9.8*pow(tiempoP3, 2);


TextStyle letraP=TextStyle();

class ejerciciosCaida extends StatelessWidget{

  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    final widthBase=411.42857142857144;
    final heigthBase=797.7142857142857;
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    final scaleWidth=screenWidth/widthBase;
    final scaleHeigth=screenHeigth/heigthBase;
    final letra=TextStyle(fontSize: 26*scaleHeigth,);
    letraP=TextStyle(fontSize: 22*scaleHeigth);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(height: 60,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "Caida"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Ejercicios",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 50,),
              pregunta1(context),
              Divider(height: 20,),
              pregunta2(context),
              Divider(height: 20,),
              pregunta3(context),
              Divider(height: 20,),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/BLABLA.png"),height: 210,)
                  ),
                  VerticalDivider(width: 110,),
                  Column(
                      children: <Widget>[
                        Divider(height: 100,),
                        ElevatedButton(
                          onPressed: ()=>Navigator.pushNamed(context, "MRULeccion"),
                          child: Icon(Icons.arrow_forward_ios),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                        ),
                      ]
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pregunta1(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/4-20,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("1.¿Desde qué altura debe caer un objeto para"
          " golpear el suelo con velocidad de $velocidadP1 m/s?(R:${respuestaP1.toStringAsPrecision(5)} m)",style: letraP,),
    );
  }

  Widget pregunta2(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/4-20,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("2. Una manzana cae de un árbol y llega al suelo en $tiempoP2 segundos. "
          "¿De qué altura cayó la manzana?(R:${respuestaP2.toStringAsPrecision(5)} m)",style: letraP,),
    );
  }

  Widget pregunta3(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/3+50,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("3. Un cuerpo se deja caer desde un edificio de la ciudad de México."
          " Calcular:a) ¿Cuál será la velocidad final que este objeto tendrá a "
          "los $tiempoP3 segundos cuando llegue el suelo?b) ¿Cuál es la altura"
          " del edificio?(a. ${respuestaP3A.toStringAsPrecision(4)} m/sg, b. ${respuestaP3B.toStringAsPrecision(5)} m)",style: letraP,),
    );
  }

  void _profe(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: MediaQuery.of(context).size.height/8,
            width: MediaQuery.of(context).size.width-100,
            child: Center(
              child: Text("Aqui hay algunos ejercicios para practicar", style: letraP),
            ),
          ),

        );
      },
    );
  }


}