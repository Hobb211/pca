import 'package:flutter/material.dart';

class DiagramaLewis extends StatelessWidget{

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
          child: SingleChildScrollView(
          child: Center(
              child: Column(
              children: <Widget>[
              Divider(height: 60,),
              Row(
                children: <Widget>[
                  //ATRAS CAMBIO DE NOMBRE SEGUN ROUTES
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "EstructuraM"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Diagrama de Lewis",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 30,),
              Container(
                  child: Image(image: AssetImage("assets/diagramalewis.png"),height: 220,)
              ),
              Divider(height:  0,),
                Stack(
                  children: <Widget>[
                Row(children: <Widget>[
                VerticalDivider(width: 180,),
              Container(
                width: 210,
                height: 320,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
                ]
                ),
              Column(
                children: <Widget>[
                Divider(height: 75),
                Row(
                children: <Widget>[
                  Container(
                      child: Image(image: AssetImage("assets/profe_2.png"),height: 340,)
                  ),
                  VerticalDivider(width: 50,),
                  Column(
                      children: <Widget>[
                        Divider(height: 220,),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "IntroEstructura"),
                              child: Icon(Icons.arrow_back_ios_sharp),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                            VerticalDivider(width: 10,),
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "TablaMolecular"),
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
                  ]
                  ),
    ]
    ),
    ),
    ),
    ),
        ),
    );
  }

  Text texto(){
    return Text(
      "Interesante diagrama ¿no crees?...para poder hacerlo debes tener su N° cuántico y sumar los electrones del último nivel mas alto como se ve en la imagen, por ej: "
          "cloruro el nivel mas alto es 3 pero hay 2 subniveles que lo contienen, S y P por eso sumamos sus electrones 2+6=8, esto representa los electrones que dibujarémos.",
      style: TextStyle(
          fontSize: 17
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
            height: 144,
            width: 100,
            child: Text("TEXTO EN CONTRUCCION",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}