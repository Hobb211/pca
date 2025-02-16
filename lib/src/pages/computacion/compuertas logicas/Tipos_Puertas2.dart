import 'package:flutter/material.dart';

class TiposPuertas2 extends StatelessWidget{

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
              Divider(height: 60,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "Compuertas"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 210,
                    child: Text("Tipos Puertas Lógicas 2",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 20,),
              Container(
                width: 380,
                height: 180,

                child:Row(
                  children: <Widget>[
                    InkWell(

                      child: Container(
                        height:180,
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                        child: Text("Puerta NOR, ambos niveles lógicos de entrada = 0, salida = 1. "
                            ,style: TextStyle(fontSize:22,color: Colors.black87),),
                      ),
                    ),
                    InkWell(

                        onTap:()=>_formula3(context),
                        child: Container(
                          height: 180,
                          width: 230,
                          child: Image(image: AssetImage("assets/nor.png"),height: 175,),
                        )
                    )
                  ],
                ),
              ),
              Divider(height: 20,),
              Container(
                width:380,
                height:155,
                child: Row(
                  children: <Widget>[
                    InkWell(

                      child: Container(
                        height:180,
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                        child: Text("Puerta NAND solo ambas entradas = 1, "
                            "generan una salida = 0.",style: TextStyle(fontSize:22,color: Colors.black87),),
                      ),
                    ),
                    InkWell(
                        onTap:()=>_formula4(context),
                        child: Container(
                          height: 180,
                          width: 230,
                          child: Image(image: AssetImage("assets/nand.png"),height: 180),
                        )
                    ),

                  ],
                ),
              ),
              Divider(height: 18,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/BLABLA.png"),height: 210,)
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                          children: <Widget>[

                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 90,),
                            Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "TiposPuertas"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "TiposPuertas3"),
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

  void _profe(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 150,
            width: 100,
            child: Text("si aún no te has fijado... "
                "NOR es la negación de OR "
                "y NAND, es la negación de AND. ",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
  void _formula4(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 150,
            width: 100,
            child: Text("Solo existe una salida 0 "
                "siempre y cuando ambas entradas "
                "sean 1. ",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
  void _formula3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 150,
            width: 100,
            child: Text("Básicamente, mientras "
                "exista un 1 en alguna de las entradas, "
                "la salida siempre será 0. ",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}