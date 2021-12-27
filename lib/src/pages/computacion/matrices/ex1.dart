import 'package:flutter/material.dart';

class EjerciciosM extends StatelessWidget{

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
                      onPressed:()=>Navigator.pushNamed(context, "Matrices"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 210,
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
              Container(
                width: 380,
                height: 120,

                child:Row(
                  children: <Widget>[
                    InkWell(

                      child: Container(
                        height:120,
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                        child: Text("Con la siguiente matriz veremos como funciona \n este código.",style: TextStyle(fontSize:18,color: Colors.black87),),
                      ),
                    ),
                    InkWell(

                      child: Container(
                        height: 80,
                        width: 230,
                        child: Image(image: AssetImage("assets/matriz_ex.png"),height: 175,),
                      )
                    )
                  ],
                ),
              ),
              Divider(height: 20,),
              Container(
                width:410,
                height:250,
                child: Row(
                  children: <Widget>[
                    InkWell(
                        onTap:()=>_formula3(context),
                        child: Container(
                          child: Image(image: AssetImage("assets/suma_python.png"),height: 250),
                        )

                    ),
                    InkWell(
                        onTap:()=>_formula4(context),
                        child: Container(
                          child: Image(image: AssetImage("assets/print_ex.png"),height: 155),
                        )
                    ),

                  ],
                ),
              ),
              Divider(height: 15,),

              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/habla.png"),height: 210,)
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
                                    onPressed: ()=>Navigator.pushNamed(context, "MatrizPythonC"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "EjerciciosM2"),
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
            child: Text("Se utiliza una variable suma, "
                "dentro del primer for, "
                "para acumular por fila o "
                "columna, y se guarda en los arrays "
                "previamente creados.",
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
            child: Text("Se crean 2 arrays "
                "para almacenar las sumas, "
                "y una variable sumador, "
                "para el total por matriz.",
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
            child: Text("Como puedes observar "
                "se obtiene el total de cada fila "
                "y cada columna, además del total "
                "de todos los valores de la matriz.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}