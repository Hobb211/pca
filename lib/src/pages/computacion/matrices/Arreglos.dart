import 'package:flutter/material.dart';

class Arreglos extends StatelessWidget{

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final letra3=TextStyle(fontSize:14, );
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
                      onPressed:()=>Navigator.pushNamed(context, "Matrices"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Que es un Array?",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 15,),
              Container(
                width: 350,
                height: 250,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 15,),
              Row(
                children: <Widget>[
              Container(
                width: 220,
                height: 50,
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                decoration: BoxDecoration(
                  color: Color(0xFFDCD6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>_formula1(context),
                      child: Container(
                        height: 35,
                        width: 44,
                        child: Text("Tip N°1: ",style: TextStyle(fontSize: 14,color: Colors.black87),),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>_formula2(context),
                      child: Container(
                        height: 35,
                        width: 44,
                        child: Text("Tip N°2: ",style: TextStyle(fontSize: 14,color: Colors.black87),),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>_formula3(context),
                      child: Container(
                        height: 35,
                        width: 44,
                        child: Text("Tip N°3: ",style: TextStyle(fontSize: 14,color: Colors.black87),),
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(width: 20,),
              Container(
              width:170,
              height:135,
                    child: Image(image: AssetImage("assets/equipos.png")),
                  ),


                  Divider(height: 20,),
          ],
              ),
              Divider(height: 10,),
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
                                    onPressed: ()=>Navigator.pushNamed(context, "IntroMatrices"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "Matriz"),
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
      "También conocido como vector, "
          "es una estructura de datos "
          "que almacena variables de "
          "forma ordenada, en donde cada "
          "elemento, posee un índice.",
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
            height: 120,
            width: 120,
            child: Text("Imagina, que tienes una caja "
                "con 4 espacios para guardar objetos, "
                "cada número es el INDICE. "
                "no te olvides de los tips...",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula1(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 80,
            width: 100,
            child: Text("En programación, el índice siempre "
                "empieza desde el 0.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 80,
            width: 100,
            child: Text("Cada lugar, corresponde a un espacio de memoria.",
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
            height: 120,
            width: 100,
            child: Text("Como vez, cada espacio de memoria guarda un elemento.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}