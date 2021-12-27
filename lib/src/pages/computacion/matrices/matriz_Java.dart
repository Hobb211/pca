import 'package:flutter/material.dart';

class MatrizJava extends StatelessWidget {

  final letra = TextStyle(fontSize: 26,);
  final letra2 = TextStyle(fontSize: 22,);
  final boton = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );
  final boton2 = ButtonStyle(
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
                      onPressed: () => Navigator.pushNamed(context, "Matrices"),
                      child: Image(
                        image: AssetImage("assets/arrow.png"), height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Matrices en Java",style: letra,),
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
                width: 300,
                height: 65,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(
                      onTap:()=>_formula1(context),
                      child: Container(
                        height:50,
                        width: 280,
                        child: Text("Como podemos escribir una matriz en Java?",style: TextStyle(fontSize:20,color: Colors.black87),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width:380,
                height:320,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(

                        child: Image(image: AssetImage("assets/matriz_java.png"),height: 250),
                      )

                    ),
                    InkWell(
                        child: Container(

                          child: Image(image: AssetImage("assets/java_print.png"),height: 300),
                        )
                    ),

                  ],
                ),
              ),
              Divider(height: 10,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: () => _profe(context),
                      child: Image(
                        image: AssetImage("assets/PIENSA.png"), height: 210,)
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
                                    onPressed: () =>
                                        Navigator.pushNamed(
                                            context, "CreandoMatriz"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty
                                            .all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: () =>
                                        Navigator.pushNamed(
                                            context, "MatrizPython"),
                                    child: Icon(Icons.arrow_forward_ios),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty
                                            .all(Color(0xFF38B000))),
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
  void _profe(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 150,
            width: 100,
            child: Text("Dos ciclos for, "
                "utilizan el número "
                "de filas y columnas para"
                " implementar la matriz.",
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
            child: Text("NO TE OLVIDES DEL PUNTO Y COMA.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}