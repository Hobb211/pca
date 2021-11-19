import 'package:flutter/material.dart';

class MRULeccion extends StatelessWidget{

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
                    child: Text("MRU",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 96,vertical: 20),
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
                height: 280,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 30,),
              Container(
                width: 180,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFDCD6D6),
                    borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: <Widget>[
                    Text("x(t)",style: TextStyle(fontSize: 24,color: Colors.red),),
                    Text("=",style: TextStyle(fontSize: 24)),
                    Text("x",style: TextStyle(fontSize: 24,color: Colors.blue)),
                    Column(
                      children: [
                        Divider(height: 10,),
                        Text("0",style: TextStyle(fontSize: 14,color: Colors.blue,)),
                      ],
                    ),
                    Text("+",style: TextStyle(fontSize: 24)),
                    Text("v",style: TextStyle(fontSize: 24,color: Colors.green)),
                    Column(
                      children: [
                        Divider(height: 10,),
                        Text("0",style: TextStyle(fontSize: 14,color: Colors.green)),
                      ]
                    ),
                    Text("*t",style: TextStyle(fontSize: 24,color: Colors.green)),
                  ]
                ),
              ),
              Divider(height: 40,),
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
                                    onPressed: ()=>Navigator.pushNamed(context, "IntroMRU"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: null,
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
      "Los MRU (Movimiento rectilíneo uniforme) "
      "ocurren cuando un objeto se mueve en línea"
      " recta a una velocidad constante y su "
      "comportamiento se describe con la fórmula:",
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
            height: 144,
            width: 100,
            child: Text("Debes recordar que en MRU x representa la posición,"
                " v representa la velocidad, a la aceleración y t el tiempo.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}