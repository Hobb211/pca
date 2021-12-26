import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
//pregunta 1
int velocidadP1=random.nextInt(100);
int anguloP1=random.nextInt(90)+1;
double respuestaP1A=velocidadP1*cos(anguloP1*pi/180)*(2*velocidadP1*sin(anguloP1*pi/180)/9.8);
//pregunta 2
int alturaP2=random.nextInt(100);
int velocidadP2=random.nextInt(50);
int anguloP2=random.nextInt(90)+1;
double tiempoP2=random.nextInt(20)+1;
double respuestaP2Ax=velocidadP2*cos(anguloP2);
double respuestaP2Ay=velocidadP2*sin(anguloP2);
double alturaMaxP2=alturaP2+respuestaP2Ay*tiempoP2-1/2*9.8*pow(tiempoP2,2);
double respuestaP2D=respuestaP2Ax*tiempoP2;



TextStyle letraP=TextStyle();

class ejerciciosProyectil extends StatelessWidget{
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
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "Proyectil"),
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
                          onPressed: ()=>Navigator.pushNamed(context, "DesafioProyectil"),
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
      height: MediaQuery.of(context).size.height/3+40,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("1.En un “tiro libre”, la pelota sale del botín del jugador "
          "con una rapidez inicial de $velocidadP1 [m/s] y forma un ángulo "
          "de ${anguloP1}º con la horizontal. Determine:"
          "\n La distancia entre el punto de lanzamiento 0 y el "
          "punto de regreso a tierra A."
          "( ${respuestaP1A.toStringAsPrecision(4)}m)",style: letraP,),
    );
  }

  Widget pregunta2(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/2+180,
      width: MediaQuery.of(context).size.width-50,
      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFDCD6D6),
      ),
      child: Text("2.Desde un edificio de $alturaP2 [m] de altura se lanza"
          " un proyectil, con una velocidad inicial de $velocidadP2 [m/s]"
          "formando un ángulo de ${anguloP2}° con la horizontal y se mantiene "
          "en el aire por ${tiempoP2} sg. Determine:"
          "\na) Las componentes ortogonales de la velocidad inicial"
          "\nb) La altura máxima alcanzada por el proyectil"
          "\nc) El alcance del proyectil"
          "\n(a. V0x= ${respuestaP2Ax.toStringAsPrecision(4)}m/sg "
          "V0y=${respuestaP2Ay.toStringAsPrecision(4)}m/sg"
          "\nb. Ymax=${alturaMaxP2.toStringAsPrecision(5)}m"
          "\nc. Xmax=${respuestaP2D.toStringAsPrecision(5)}m)",style: letraP,),
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