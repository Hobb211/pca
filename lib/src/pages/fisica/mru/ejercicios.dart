import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
//pregunta 1
int distanciaP1=random.nextInt(1000);
double respuestaP1=distanciaP1/4;
//pregunta 2
double velocidadP2=343.2;
int tiempoP2=random.nextInt(50);
double respuestaP2=velocidadP2*tiempoP2/1000;
//pregunta 3
int aceleracionP3=random.nextInt(200);
int tiempoP3=random.nextInt(50);
int respuestaP3A=aceleracionP3*tiempoP3;
double respuestaP3B=1/2*aceleracionP3*pow(tiempoP3, 2);
//pregunta 4
int velocidadP4=random.nextInt(1000);
int tiempoP4=random.nextInt(50);
int velocidadP4F=random.nextInt(80);
double aceleracionP4=(velocidadP4F-velocidadP4)/tiempoP4;
double distanciaP4=velocidadP4*tiempoP4+1/2*aceleracionP4*pow(tiempoP4, 2);


TextStyle letraP=TextStyle();

class ejerciciosMRU extends StatelessWidget{
  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
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
                  InkWell(
                      onTap:()=>Navigator.pushNamed(context, "MRU"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Center(child: Text("Ejercicios",style: letra,)),
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
              pregunta4(context),
              Divider(height: 20,),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/BLABLA.png"),height: 210,)
                  ),
                  VerticalDivider(width: 50,),
                  Column(
                      children: <Widget>[
                        Divider(height: 100,),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "SimuladorMru"),
                              child: Icon(Icons.arrow_back_ios_sharp),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                            VerticalDivider(width: 10,),
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "DesafioMru"),
                              child: Icon(Icons.arrow_forward_ios),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                          ],
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
      child: Text("1.¿A qué velocidad debe circular un auto de carreras"
          " para recorrer $distanciaP1 km en un cuarto de hora? (R:$respuestaP1 km/H)",style: letraP,),
    );
  }

  Widget pregunta2(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/3-30,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("2. Sabiendo que la velocidad del sonido es de $velocidadP2 m/s,"
          " ¿a cuántos kilómetros de distancia se produce un trueno que tarda $tiempoP2 "
          "segundos en oírse? (R:${respuestaP2.toStringAsPrecision(4)} km)",style: letraP,),
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
      child: Text("3. Un cuerpo se mueve, partiendo del reposo, con"
          " una aceleración constante de $aceleracionP3 m/sg^2. Calcular: a) la"
          " velocidad que tiene al cabo de $tiempoP3 s, b) la distancia recorrida,"
          " desde el reposo, luego de $tiempoP3 segundos. "
          "(a.$respuestaP3A m/s b.$respuestaP3B m)",style: letraP,),
    );
  }

  Widget pregunta4(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/2-50,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("4. Un automóvil que marcha a una velocidad de $velocidadP4 m/sg, "
          "aplica los frenos y al cabo de $tiempoP4 segundos su velocidad se ha "
          "reducido a $velocidadP4F m/sg. Calcular a) la aceleración y b) "
          "la distancia recorrida luego de $tiempoP4 segundos. "
          "(a.$aceleracionP4 m/sg^2 b.$distanciaP4 m)",style: letraP,),
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