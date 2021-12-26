import 'package:flutter/material.dart';

class desafios_en extends StatelessWidget{

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
                        onPressed:()=>Navigator.pushNamed(context, "EnlaceQ"),
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
                Divider(height: 25,),
                Container(
                  width: 350,
                  height: 185,
                  child: texto(),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFDCD6D6),
                  ),
                ),
                Divider(height: 13,),
                Stack(
                    children: <Widget>[
                      Row(children: <Widget>[
                        VerticalDivider(width: 220,),
                        Divider(height: 10,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoA(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),

                      Row(children: <Widget>[
                        VerticalDivider(width: 220,),
                        Divider(height: 170,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoB(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),

                      Row(children: <Widget>[
                        VerticalDivider(width: 220,),
                        Divider(height: 290,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoC(),
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),

                      Row(children: <Widget>[
                        VerticalDivider(width: 220,),
                        Divider(height: 410,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoD(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 80,),
                        Divider(height: 410,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoE(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 80,),
                        Divider(height: 170),
                        Container(
                          width: 100,
                          height:50,
                          child: textoF(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 80,),
                        Divider(height: 10,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoG(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 80,),
                        Divider(height: 290,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoH(),
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 80,),
                        Divider(height: 530,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoI(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]
                      ),
                      Row(children: <Widget>[
                        VerticalDivider(width: 220,),
                        Divider(height: 530,),
                        Container(
                          width: 100,
                          height:50,
                          child: textoJ(),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                        VerticalDivider(width: 0,),
                        Column(
                            children: <Widget>[
                              Divider(height: 220,),
                              ElevatedButton(
                                onPressed: ()=>Navigator.pushNamed(context, "Ejercicios_en"),
                                child: Icon(Icons.arrow_back_ios_sharp),
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                              ),
                            ]
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

  Text texto(){
    return Text(
      "Llego el momento de los desafios estas preparado para analizar y"
        "descubrir en vase a lo aprendido que tipo de enlaces estan presentes en los siguientes ejemplos",
      style: TextStyle(
          fontSize: 21
      ),
    );
  }
  Text textoA(){
    return Text(
      "CO2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }
  Text textoB(){
    return Text(
      "Zn2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }
  Text textoC(){
    return Text(
      "CaF2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }
  Text textoD(){
    return Text(
      "H2O",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }
  Text textoE(){
    return Text(
      "Ag2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }

  Text textoF(){
    return Text(
      "Br2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }

  Text textoG(){
    return Text(
      "K2O",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }

  Text textoH(){
    return Text(
      "Al2O3",
      style: TextStyle(
          fontSize: 30
      ),
    );
  }

  Text textoI(){
    return Text(
      "SO2",
      style: TextStyle(
          fontSize: 35
      ),
    );
  }

  Text textoJ(){
    return Text(
      "LiBr",
      style: TextStyle(
          fontSize: 35
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