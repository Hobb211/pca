import 'package:flutter/material.dart';

class ejercicios_es extends StatelessWidget {

  final letra = TextStyle(fontSize: 26,);
  final letra2 = TextStyle(fontSize: 22,);
  final boton = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
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
                        onPressed: () =>
                            Navigator.pushNamed(context, "EstructuraM"),
                        child: Image(
                          image: AssetImage("assets/arrow.png"), height: 50,)
                    ),
                    Container(
                      width: 250,
                      child: Text("Ejercicio 1", style: letra,),
                      padding: EdgeInsets.symmetric(
                          horizontal: 45, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    )
                  ],
                ),

                Divider(height: 13,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 175,),
                      Container(
                        width:200,
                        height: 190,
                        child: texto(),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                      ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 55,),
                            Row(
                              children: <Widget>[
                                Container( //profesor 1
                                    child: Image(
                                      image: AssetImage("assets/PIENSA.png"), height: 280,)
                                ),
                              ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 10,),
                        Container(
                          width:302,
                          height: 120,
                          child: texto1(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 70,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 178,),
                            Row(
                              children: <Widget>[
                                Container( //profesor 1
                                    child: Image(
                                      image: AssetImage("assets/BLABLA_.png"), height: 280,)
                                ),

                              ]
                            ),
                              ],
                            )
                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 160,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 50,),
                              Row(
                                  children: <Widget>[
                                    Container( //profesor 1
                                        child: Image(
                                          image: AssetImage("assets/becl2.png"), height: 50)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 150,),
                        Container(
                          width:240,
                          height: 130,
                          child: texto2(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 0,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 0,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                          image: AssetImage("assets/habla.png"), height: 280,)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 180,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 200,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                            image: AssetImage("assets/lewisbecl2.png"), height: 60)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 10,),
                        Container(
                          width:280,
                          height: 110,
                          child: texto3(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 70,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 133,),
                              Row(
                                  children: [
                                    InkWell(
                                      onTap: ()=>tablageomo(context),
                                      child: Container(
                                            child: Image(
                                              image: AssetImage("assets/profe_1_.png"), height: 280,)
                                        ),
                                    ),
                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 160,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 50,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                            image: AssetImage("assets/geometriabecl22.png"), height: 50)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),

                      Column(
                          children: <Widget>[
                            Divider(height: 350,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 140,),
                              Row(
                                  children: <Widget>[

                                    Container(
                                      width: 250,
                                      child: Text("Ejercicio 2", style: letra,),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 45, vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFFDCD6D6),
                                      ),
                                    )

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),

                    ]
                ),
                Divider(height: 13,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 188,),
                        Container(
                          width:210,
                          height: 210,
                          child: texto4(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 55,),
                            Row(
                              children: <Widget>[
                                Container(
                                    child: Image(
                                      image: AssetImage("assets/PIENSA.png"), height: 280,)
                                ),
                              ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 10,),
                        Container(
                          width:302,
                          height: 120,
                          child: texto5(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 70,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 178,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                          image: AssetImage("assets/BLABLA_.png"), height: 280,)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 160,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 50,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                            image: AssetImage("assets/sf6.png"), height: 150)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 150,),
                        Container(
                          width:240,
                          height: 130,
                          child: texto6(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 0,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 0,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                          image: AssetImage("assets/habla.png"), height: 280,)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                      Column(
                          children: <Widget>[
                            Divider(height: 140,),
                            Row(children: <Widget>[

                              VerticalDivider(width: 200,),
                              Row(
                                  children: <Widget>[
                                    Container(
                                        child: Image(
                                            image: AssetImage("assets/lewissf6.png"), height: 130)
                                    ),

                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                    ]
                ),

                Divider(height: 0,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[

                        VerticalDivider(width: 10,),
                        Container(
                          width:280,
                          height: 110,
                          child: texto7(),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Column(
                        children: <Widget>[
                        Divider(height: 120,),
                         Row(children: <Widget>[

                             VerticalDivider(width: 30,),
                            Row(
                               children: <Widget>[
                                      Container( //profesor 1
                                   child: Image(
                                      image: AssetImage("assets/geometriasf6.png"), height: 110)
                                      ),
                                  ]
                              ),
                            ],
                            )
                          ]
                      ),
                      Column(children: <Widget>[
                        Divider(height: 80,),
                        Row(children: <Widget>[

                          VerticalDivider(width: 65,),
                          Stack(
                              children: [
                                Row(
                                  children: [
                                    VerticalDivider(width: 60,),
                                    InkWell(
                                      onTap: ()=>tablageomo(context),
                                      child: Container(
                                          child: Image(
                                            image: AssetImage("assets/profe_1_.png"), height: 280,)
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                    children: <Widget>[
                                      Divider(height: 190,),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: ()=>Navigator.pushNamed(context, "GeometriaMolecular"),
                                            child: Icon(Icons.arrow_back_ios_sharp),
                                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                          ),
                                          VerticalDivider(width: 10,),
                                          ElevatedButton(
                                            onPressed: ()=>Navigator.pushNamed(context, "desafios_es"),
                                            child: Icon(Icons.arrow_forward_ios),
                                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ]
                          ),
                            ],
                            )
                          ]
                      ),
                    ]
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Text texto() {
    return Text(
      "Que tal si ponemos en practica lo visto, la molecula sera... dejame pensar..."
          " BeCl2, sigue estos pasos primero\n-Diagramas de lewis\n-Cuenta los pares de -e\n-Usa la Tabla para su Geometría",
      style: TextStyle(
          fontSize: 16
      ),
    );
  }
  Text texto1() {
    return Text(
      "1) Diagrama de Lewis:\n-Necesitamos los números cuánticos del nivel más "
        "alto de Be y Cl\nBe: 1s2 2s2/-e=2\nCl: 1s2 2s2 2p6 3s2 3p5/-e=7",
      style: TextStyle(
          fontSize: 17
      ),
    );
  }

  Text texto2() {
    return Text(
      "2)Contamos los pares de -e\nQue exiten en la molecula de BeCl2\n"
          "-e enlazado=2\n-e libres=0",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }

  Text texto3() {
    return Text(
      "3)Vemos la Tabla de Geometría para la molecula de BeCl2\n-e enlazado=2\n-e libres=0",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }

  Text texto4() {
    return Text(
      "Ya que veo que aprendes muy rápido, probemos con otra molecula un poco mas"
          " compleja SF6\n-Diagramas de lewis\n-Cuenta los pares de -e\n-Usa la"
          " Tabla para su Geomtría",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }

  Text texto5() {
    return Text(
      "1) Diagrama de Lewis:\n-Necesitamos los números cuánticos del nivel más "
          "alto de S y F\nF: 1s2 2s2 2p5 /-e=7\nS: 1s2 2s2 2p6 3s2 3p4 /-e=6",
      style: TextStyle(
          fontSize: 17
      ),
    );
  }

  Text texto6() {
    return Text(
      "2)Contamos los pares de -e\nQue exiten en la molecula de SF6\n-e enlazado=6\n-e libres=0",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }

  Text texto7() {
    return Text(
      "3)Vemos la Tabla de Geometría para la molecula de SF6\n-e enlazado=6\n-e libres=0",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }


  void tablageomo(BuildContext context) {
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
            child: Image(image:AssetImage('assets/tablageomo.png')),

          ),

        );
      },
    );
  }

}