import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math'as math;
import 'dart:io';

import 'package:pca/src/pages/fisica/caida%20libre/simulador.dart';


int velocidad=0;
int posicionI=0;
int posicion=0;


class SimuladorMru extends StatefulWidget{
  @override
  State<SimuladorMru> createState() => _SimuladorMruState();
}

class _SimuladorMruState extends State<SimuladorMru> {
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  final boton2=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFDCD6D6)),
      elevation: MaterialStateProperty.all(0)
  );

  final containers= BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
  );
  final formKey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final widthBase=411.42857142857144;
    final heigthBase=797.7142857142857;
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    final scaleWidth=screenWidth/widthBase;
    final scaleHeigth=screenHeigth/heigthBase;
    final letra=TextStyle(fontSize: 26*scaleWidth,);
    final letra2=TextStyle(fontSize: 16*scaleWidth,);


    return Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.gif"),
                fit: BoxFit.cover,
              ),
            ),
            child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Divider(height: 60*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                          style: boton,
                          onPressed:()=>Navigator.pushNamed(context, "MRU"),
                          child: Image(image: AssetImage("assets/arrow.png"),height: 50*scaleHeigth,)
                      ),
                      Container(
                        width: 250*scaleWidth,
                        child: Text("Simulador",style: letra,),
                        padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                        decoration: containers,
                      )
                    ],
                  ),
                  Divider(height: 20*scaleHeigth,),
                  Container(
                    width: 250*scaleWidth,
                    child: Text("X0= $posicionI m\nV= $velocidad m/sg\nTiempo= $tiempo sg",style: letra2,),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    decoration: containers,
                  ),
                  Divider(height: 15*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      VerticalDivider(width:20*scaleWidth ,),
                      Column(
                        children: [
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputPosicion()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputVelocidad()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputTiempo()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                        ],
                      ),
                      VerticalDivider(width:50*scaleWidth ),
                      Column(
                          children: <Widget>[
                            InkWell(
                              child:Container(
                                decoration: containers,
                                height: 50,
                                width: 150,
                                child: Text("Disparar"),
                                padding: EdgeInsets.symmetric(vertical:15,horizontal: 40),
                              ),
                              onTap: (){
                                final isValid=formKey.currentState!.validate();
                                if (isValid){
                                  posicion=posicionI+velocidad*tiempo;
                                  _simulador(scaleHeigth);
                                }
                              },
                            ),
                            Divider(height: 10*scaleHeigth,),
                            Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "IntroProyectil"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10*scaleWidth,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "FormulasProyectil"),
                                    child: Icon(Icons.arrow_forward_ios),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                ]
                            )
                          ]
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }



  Widget inputPosicion(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      decoration: InputDecoration(
          icon: Image(image: AssetImage("assets/x.png"),height: 13,),
          hintText: "Posición"
      ),
      onChanged: (value)=>setState(()=>posicionI=(int.parse(value))),
    );
  }

  Widget inputVelocidad(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      decoration: InputDecoration(
          icon: Image(image: AssetImage("assets/v.png"),height: 13,),
          hintText: "Velocidad"
      ),
      onChanged: (value)=>setState(()=>velocidad=(int.parse(value))),
    );
  }

  Widget inputTiempo(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      validator: (value) {
        if ( double.parse(value!)>=0){
          return null;
        }
        return 'tiempo>=0';
      },
      decoration: InputDecoration(
          icon: Icon(Icons.access_time,size: 20,),
          hintText: "Tiempo"
      ),
      onChanged: (value)=>setState(()=>tiempo=(int.parse(value))),
    );
  }

  void _simulador(double scaleHeigth){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Color(0xFF38B000),
            content: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height/2+30,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 160*scaleHeigth,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                            "X(t)=X0+V*t\n"
                            "X($tiempo)=${posicion} m"),
                      ),
                      Divider(height: 20*scaleHeigth,),
                      Container(
                          height: 240,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/ciudad.gif")),
                          ),
                          child:  Center(child:Stack(children: [
                            autoAnimado()
                          ]
                          )
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }

}


class autoAnimado extends StatefulWidget {

  @override
  _autoAnimadaState createState() => _autoAnimadaState();
}

class _autoAnimadaState extends State<autoAnimado> with SingleTickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    controller= AnimationController(
        vsync: this,
        duration: Duration(seconds: 0)
    );


    controller.addListener(() {
      setState(() {});


    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (context,child){
          return Transform.translate(
              offset: Offset(0,72),
              child:_auto()
          );
        }
    );
  }
}



class _auto extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/auto.png"))
      ),
    );
  }
}