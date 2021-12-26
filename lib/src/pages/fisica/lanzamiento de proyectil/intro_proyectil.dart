import 'package:flutter/material.dart';

class IntroProyectil extends StatelessWidget{

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
                      onTap:()=>Navigator.pushNamed(context, "Proyectil"),
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
                height: 270,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 135,),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/PIENSA.png"),height: 210,)
                  ),
                  VerticalDivider(width: 110,),
                  Column(
                      children: <Widget>[
                        Divider(height: 100,),
                        ElevatedButton(
                          onPressed: ()=>Navigator.pushNamed(context, "FormulasProyectil"),
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
      "El lanzamiento de proyectil es un movimiento "
          "al cual se le aplica una velocidad inicial "
          "en un cierto angulo para luego quedar a merced de la gravedad.",
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
            child: Text("Si ya viste la clase de MRU notaras que las "
                "formulas de lanzamiento de proyectil comparten la "
                "misma estructura que los movimientos MRU y MRUA",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}