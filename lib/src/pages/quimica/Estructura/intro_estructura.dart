import 'package:flutter/material.dart';

class IntroEstructura extends StatelessWidget{

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
                  //ATRAS CAMBIO DE NOMBRE SEGUN ROUTES
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "EstructuraM"),
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
                height: 210,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 65,),
              Row(
                children: <Widget>[
                  Container(
                      child: Image(image: AssetImage("assets/BLABLA.png"),height: 340,)
                  ),
                  VerticalDivider(width: 50,),
                  Column(
                      children: <Widget>[
                        Divider(height: 220,),
                        ElevatedButton(
                          onPressed: ()=>Navigator.pushNamed(context, "DiagramaLewis"),
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
      "La geometría molecular o estructura molecular se "
          "refiere a la disposición tridimensional de los átomos que constituyen una molécula.",
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
            child: Text("TEXTO EN CONTRUCCION",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }
}