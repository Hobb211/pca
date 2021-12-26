import 'package:flutter/material.dart';

class IntroMRU extends StatelessWidget{

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(height: 60,),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap:()=>Navigator.pushNamed(context, "MRU"),
                    child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Introducción",style: letra,),
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
                height: 390,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: ()=>_profe(context),
                    child: Image(image: AssetImage("assets/BLABLA.png"),height: 210,)
                  ),
                  VerticalDivider(width: 110,),
                  Column(
                    children: <Widget>[
                      Divider(height: 100,),
                      ElevatedButton(
                        onPressed: ()=>Navigator.pushNamed(context, "MRULeccion"),
                        child: Icon(Icons.arrow_forward_ios),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                      ),
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
      "Al estudiar los movimientos de "
      "objetos en línea recta podemos encontrar dos tipos "
      "los MRU y los MRUA.\n"
      "Ambos movimientos comparten la misma estructura"
      "relacionando la posición del objeto con"
      "su velocidad y aceleración en un tiempo determinado.",
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