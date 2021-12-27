import 'package:flutter/material.dart';

class TiposPuertas extends StatelessWidget{

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
                    width: 190,
                    child: Text("Tipos Puertas Lógicas",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ), Divider(height: 40,),
              Container(
                width: 350,
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(

                      child: Container(
                        height:80,
                        width: 300,
                        child: Text("Puerta NOT: \n"
                            "Si el nivel lógico de entrada es 1,\n"
                            "la salida entonces será 0. ",style: TextStyle(fontSize:20,color: Colors.black87),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width:400,
                height:250,
                child: Row(
                  children: <Widget>[
                    InkWell(

                        child: Container(
                          child: Image(image: AssetImage("assets/not_gate.png"),height: 175),
                        )

                    ),
                    InkWell(

                        child: Container(
                          child: Image(image: AssetImage("assets/not_logic.png"),height: 175),
                        )
                    ),

                  ],
                ),
              ),
              Divider(height: 13,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/profe_3.png"),height: 210,)
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
                                    onPressed: ()=>Navigator.pushNamed(context, "PuertaLogica"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "TiposPuertas2"),
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
            height: 70,
            width: 100,
            child: Text("La función básica, "
                "de esta puerta es "
                "negar la entrada. ",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}