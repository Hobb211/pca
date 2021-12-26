import 'package:flutter/material.dart';

class FormulasProyectil extends StatelessWidget{

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
    final widthBase=411.42857142857144;
    final heigthBase=797.7142857142857;
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    final scaleWidth=screenWidth/widthBase;
    final scaleHeigth=screenHeigth/heigthBase;

    final letra=TextStyle(fontSize: 26*scaleWidth,);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(height: 60*scaleHeigth,),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap:()=>Navigator.pushNamed(context, "Proyectil"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50*scaleHeigth,)
                  ),
                  Container(
                    width: 250*scaleWidth,
                    child: Text("Formulas",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 68,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 45*scaleHeigth,),
              Container(
                width: 350*scaleWidth,
                height: 190*scaleHeigth,
                child: texto(scaleWidth),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 20*scaleHeigth,),
              Container(
                width: 265*scaleWidth,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFDCD6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>_formula1(context,scaleHeigth,scaleWidth),
                      child: Container(
                        height: 35*scaleHeigth,
                        width: 44*scaleWidth,
                        child: Text("x(t)",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.red),),
                      ),
                    ),
                    Text("=",style: TextStyle(fontSize: 24*scaleWidth)),
                    InkWell(
                      onTap: ()=>_formula2(context,scaleHeigth,scaleWidth),
                      child: Container(
                          height: 35*scaleHeigth,
                          width: 25*scaleWidth,
                          child: Row(
                            children: [
                              Text("x",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.blue)),
                              Column(
                                children: [
                                  Divider(height: 15*scaleHeigth,),
                                  Text("0",style: TextStyle(fontSize: 14*scaleWidth,color: Colors.blue,)),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                    Text("+",style: TextStyle(fontSize: 24*scaleWidth)),
                    InkWell(
                      onTap: ()=>_formula3(context,scaleHeigth,scaleWidth),
                      child: Container(
                          height: 35*scaleHeigth,
                          width: 130*scaleWidth,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.green)),
                              Column(
                                  children: [
                                    Divider(height: 15*scaleHeigth,),
                                    Text("0",style: TextStyle(fontSize: 14*scaleWidth,color: Colors.green)),
                                  ]
                              ),
                              Text("cos(α°)*t",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.green)),
                            ],
                          )
                      ),
                    ),

                  ],
                ),
              ),
              Divider(height: 20*scaleHeigth,),
              Container(
                width: 378*scaleWidth,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFDCD6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Row(
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>_formula2_1(context,scaleHeigth,scaleWidth),
                      child: Container(
                        height: 35*scaleHeigth,
                        width: 46*scaleWidth,
                        child: Text("y(t)",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.red),),
                      ),
                    ),
                    Text("=",style: TextStyle(fontSize: 24*scaleWidth)),
                    InkWell(
                      onTap: ()=>_formula2_2(context,scaleHeigth,scaleWidth),
                      child: Container(
                          height: 35*scaleHeigth,
                          width: 25*scaleWidth,
                          child: Row(
                            children: [
                              Text("y",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.blue)),
                              Column(
                                children: [
                                  Divider(height: 15*scaleHeigth,),
                                  Text("0",style: TextStyle(fontSize: 14*scaleWidth,color: Colors.blue,)),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                    Text("+",style: TextStyle(fontSize: 24*scaleWidth)),
                    InkWell(
                      onTap: ()=>_formula2_3(context,scaleHeigth,scaleWidth),
                      child: Container(
                          height: 35*scaleHeigth,
                          width: 130*scaleWidth,
                          child: Row(
                            children: [
                              Text("v",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.green)),
                              Column(
                                  children: [
                                    Divider(height: 15*scaleHeigth,),
                                    Text("0",style: TextStyle(fontSize: 14*scaleWidth,color: Colors.green)),
                                  ]
                              ),
                              Text("sen(α°)*t",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.green)),
                            ],
                          )
                      ),
                    ),
                    Text("-",style: TextStyle(fontSize: 24*scaleWidth)),
                    InkWell(
                      onTap: ()=>_formula2_4(context,scaleHeigth,scaleWidth),
                      child: Container(
                          height: 35*scaleHeigth,
                          width: 98*scaleWidth,
                          child: Row(
                            children: [
                              Text("(1/2)g*t",style: TextStyle(fontSize: 24*scaleWidth,color: Colors.green)),
                              Column(
                                  children: [
                                    Text("2",style: TextStyle(fontSize: 14*scaleWidth,color: Colors.green)),
                                    Divider(height: 15*scaleHeigth,),
                                  ]
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 70*scaleHeigth,),
              Row(
                children: <Widget>[
                  VerticalDivider(),
                  InkWell(
                      onTap: ()=>_profe(context,scaleHeigth,scaleWidth),
                      child: Image(image: AssetImage("assets/profe_1.png"),height: 210*scaleHeigth,)
                  ),
                  VerticalDivider(width:20*scaleWidth ,),
                  Column(
                      children: <Widget>[
                        Divider(height: 100*scaleHeigth,),
                        Row(
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: ()=>Navigator.pushNamed(context, "IntroProyectil"),
                                child: Icon(Icons.arrow_back_ios_sharp),
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                              ),
                              VerticalDivider(width: 10*scaleWidth,),
                              ElevatedButton(
                                onPressed: ()=>Navigator.pushNamed(context, "SimuladorProyectil"),
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

  Text texto(double scale){
    return Text(
      "Podemos separar las formulas de lanzamiento"
          " de proyectil en dos, posición x(t)"
          " (MRU) y posición y(t) (MRUA)",
      style: TextStyle(
          fontSize: 24*scale
      ),
    );
  }

  void _profe(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 144*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Prueba tocando la formula",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula1(BuildContext context,double scaleHeigth, double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeigth,
            width: 100*scaleWidth,
            child: Text("Representa la posición horizontal en el tiempo",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula2(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeight,
            width: 10*scaleWidth,
            child: Text("Representa la posición horizontal inicial del objeto",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula3(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 120*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la distancia horizontal recorrida del objeto despues de "
                "una cantidad de tiempo a una velocidad constante",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }


  void _formula2_1(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la posición vertical en el tiempo",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula2_2(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la posición vertical inicial del objeto",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula2_3(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 120*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la distancia horizontal recorrida del objeto despues de "
                "una cantidad de tiempo a una velocidad constante",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

  void _formula2_4(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 120*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la distancia recorrida del objeto despues de "
                "una cantidad de tiempo en base a la gravedad",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }
}