import 'package:flutter/material.dart';

class desafios_co extends StatelessWidget{

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
                          onPressed:()=>Navigator.pushNamed(context, "ConfiguracionE"),
                          child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                      ),
                      Container(
                        width: 250,
                        child: Text("Desafios",style: letra,),
                        padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                      )
                    ],
                  ),
                  Divider(height: 50,),
                  Container(
                    width: 350,
                    height: 160,
                    child: texto(),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  ),
                  Divider(height: 15,),
                  Stack(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Divider(height: 200,),
                          VerticalDivider(width: 30,),
                          Container(
                              child: Image(image: AssetImage("assets/desafio_co.png"),height: 350,)
                          ),
                        ]
                        ),
                        Column(
                          children: <Widget>[
                            Divider(height: 130,),
                            Row(
                              children: <Widget>[
                                VerticalDivider(width: 300,),
                                Column(
                                    children: <Widget>[
                                      Divider(height: 220,),
                                      ElevatedButton(
                                        onPressed: ()=>Navigator.pushNamed(context, "ejercicios_co"),
                                        child: Icon(Icons.arrow_back_ios_sharp),
                                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
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
    );
  }

  Text texto(){
    return Text(
      "Mediante el uso del diagrama de möller escribe la configuracion electronica de cada uno de estos elementos",
      style: TextStyle(
          fontSize: 23
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