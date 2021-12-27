import 'package:flutter/material.dart';

class PuertaLogica extends StatelessWidget{

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );
  final boton2=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFDCD6D6)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Divider(height: 95,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      /** esta ruta es hacia raiz
                      */
                      onPressed:()=>Navigator.pushNamed(context, "Compuertas"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 270,
                    child: Text("¿Qué es una puerta lógica?",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),

              Divider(height: 75,),
              Container(
                width: 350,
                height: 230,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 85,),

              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/profe_1.png"),height: 210,)
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                        ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 100,),
                            Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "IntroCompuertas"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "TiposPuertas"),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Text texto(){
    return Text(
      "Una compuerta lógica es, "
      "un circuito electrónico integrado, "
      "con la capacidad de manipular "
      "señales. Funcionan por transistores.",
      style: TextStyle(
          fontSize: 24
      ),
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
            height: 70,
            width: 100,
            child: Text("Poseen niveles lógicos "
                "para determinar el "
                "tipo de puerta lógica.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}