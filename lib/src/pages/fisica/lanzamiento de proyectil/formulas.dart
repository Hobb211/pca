import 'package:flutter/material.dart';

class FormulasProyectil extends StatelessWidget{

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
                      onPressed:()=>Navigator.pushNamed(context, "Proyectil"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Formulas",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 68,vertical: 20),
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
                height: 190,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 20,),
              Container(
                width: 265,
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
                          width: 130,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24,color: Colors.green)),
                              Column(
                                  children: [
                                    Divider(height: 15,),
                                    Text("0",style: TextStyle(fontSize: 14,color: Colors.green)),
                                  ]
                              ),
                              Text("cos(α°)*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                            ],
                          )
                      ),
                    ),

                  ],
                ),
              ),
              Divider(height: 20,),
              Container(
                width: 378,
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
                        width: 46,
                        child: Text("y(t)",style: TextStyle(fontSize: 24,color: Colors.red),),
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
                              Text("y",style: TextStyle(fontSize: 24,color: Colors.blue)),
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
                          width: 130,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24,color: Colors.green)),
                              Column(
                                  children: [
                                    Divider(height: 15,),
                                    Text("0",style: TextStyle(fontSize: 14,color: Colors.green)),
                                  ]
                              ),
                              Text("sen(α°)*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                            ],
                          )
                      ),
                    ),
                    Text("-",style: TextStyle(fontSize: 24)),
                    InkWell(
                      onTap: ()=>_formula2_4(context),
                      child: Container(
                          height: 35,
                          width: 98,
                          child: Row(
                            children: [
                              Text("(1/2)g*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                              Column(
                                  children: [
                                    Text("2",style: TextStyle(fontSize: 14,color: Colors.green)),
                                    Divider(height: 15,),
                                  ]
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 70,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      style: boton,
                      onPressed: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/profe_1.png"),height: 210,)
                  ),
                  Column(
                      children: <Widget>[
                        Divider(height: 100,),
                        Row(
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: ()=>Navigator.pushNamed(context, "IntroProyectil"),
                                child: Icon(Icons.arrow_back_ios_sharp),
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                              ),
                              VerticalDivider(width: 10,),
                              ElevatedButton(
                                onPressed: ()=>Navigator.pushNamed(context, "FormulasProyectil"),
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
          ),
        ),
      ),
    );
  }

  Text texto(){
    return Text(
      "Podemos separar las formulas de lanzamiento"
          " de proyectil en dos, posición x(t)"
          " (MRU) y posición y(t) (MRUA)",
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
            child: Text("Representa la posición horizontal en el tiempo",
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
            child: Text("Representa la posición horizontal inicial del objeto",
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
            child: Text("Representa la distancia horizontal recorrida del objeto despues de "
                "una cantidad de tiempo a una velocidad constante",
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
            child: Text("Representa la posición vertical en el tiempo",
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
            child: Text("Representa la posición vertical inicial del objeto",
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
            height: 120,
            width: 100,
            child: Text("Representa la distancia horizontal recorrida del objeto despues de "
                "una cantidad de tiempo a una velocidad constante",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula2_4(BuildContext context){
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
                "una cantidad de tiempo en base a la gravedad",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}