import 'package:flutter/material.dart';

class MRUALeccion extends StatelessWidget{

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
                      onPressed:()=>Navigator.pushNamed(context, "MRU"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("MRUA",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 88,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 45,),
              Container(
                width: 350,
                height: 280,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 10,),
              Container(
                width: 293,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
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
                        child: Text("x(t)",style: TextStyle(fontSize: 24,color: Colors.red),),
                      ),
                    ),
                    Text("=",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula2(context),
                      child: Container(
                          height: 35,
                          width: 25,
                          child: Row(
                            children: [
                              Text("x",style: TextStyle(fontSize: 24,color: Colors.blue)),
                              Column(
                                children: [
                                  Divider(height: 15,),
                                  Text("0",style: TextStyle(fontSize: 14,color: Colors.blue,)),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                    Text("+",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula3(context),
                      child: Container(
                          height: 35,
                          width: 46,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24,color: Colors.green)),
                              Column(
                                  children: [
                                    Divider(height: 10,),
                                    Text("0",style: TextStyle(fontSize: 14,color: Colors.green)),
                                  ]
                              ),
                              Text("*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                            ],
                          )
                      ),
                    ),
                    Text("+",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula4(context),
                      child: Container(
                          height: 35,
                          width: 100,
                          child: Row(
                            children: [
                              Text("(1/2)a*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                              Column(
                                  children: [
                                    Text("^2",style: TextStyle(fontSize: 14,color: Colors.green)),
                                    Divider(height: 10,)
                                  ]
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 10,),
              Container(
                width: 181,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFDCD6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>_formula2_1(context),
                      child: Container(
                        height: 35,
                        width: 44,
                        child: Text("v(t)",style: TextStyle(fontSize: 24,color: Colors.red),),
                      ),
                    ),
                    Text("=",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula2_2(context),
                      child: Container(
                          height: 35,
                          width: 25,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24,color: Colors.blue)),
                              Column(
                                children: [
                                  Divider(height: 15,),
                                  Text("0",style: TextStyle(fontSize: 14,color: Colors.blue,)),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                    Text("+",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula2_3(context),
                      child: Container(
                          height: 35,
                          width: 46,
                          child:
                              Text("a*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 0,),
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
                                    onPressed: ()=>Navigator.pushNamed(context, "MRULeccion"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "MRUALeccion"),
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
      "Los MRUA (Movimiento rectilíneo uniforme acelerado)"
          " ocurren cuando un objeto se mueve en línea recta "
          "a una velocidad variable y su comportamiento se"
          " describe con la fórmula:",
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
            height: 50,
            width: 100,
            child: Text("Prueba tocando la formula",
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
            height: 50,
            width: 100,
            child: Text("Representa la posición en el tiempo",
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
            height: 50,
            width: 100,
            child: Text("Representa la posición inicial del objeto",
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
            child: Text("Representa la distancia recorrida del objeto despues de "
                "una cantidad de tiempo a una velocidad constante",
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
            height: 120,
            width: 100,
            child: Text("Representa la distancia recorrida del objeto despues de "
                "una cantidad de tiempo en base a la aceleración",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula2_1(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50,
            width: 100,
            child: Text("Representa la velocidad en el tiempo",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula2_2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50,
            width: 100,
            child: Text("Representa la velocidad inicial del objeto",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula2_3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 72,
            width: 100,
            child: Text("Representa la variación de la velocidad en base a la aceleración",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}