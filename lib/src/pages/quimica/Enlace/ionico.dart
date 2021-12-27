import 'package:flutter/material.dart';

class ionico extends StatelessWidget{

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
                    child: Text("Enlace Iónico",style: letra,),
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
                height: 160,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              ),
              Divider(height: 15,),
              Stack(
                children: <Widget>[
              Row(children: <Widget>[
               Divider(height: 200,),
                VerticalDivider(width: 180,),
              Container(
                  child: Image(image: AssetImage("assets/ionico.jpg"),height: 210,)
                  ),
                  ]
                  ),
              Column(
                children: <Widget>[
              Divider(height: 100,),
              Row(
                children: <Widget>[
                VerticalDivider(width: 0),
                   Container(
                      child: Image(image: AssetImage("assets/PIENSA.png"),height: 340,)
                  ),
                  Column(
                      children: <Widget>[
                        Divider(height: 220,),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "Covalente"),
                              child: Icon(Icons.arrow_back_ios_sharp),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                            VerticalDivider(width: 10,),
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "Metalico"),
                              child: Icon(Icons.arrow_forward_ios),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                          ],
                        ),
                      ]
                  )
                ],
              )
                ],
              ),
                ]
              ),
            ]
        ),
        ),
        ),
      ),
    );
  }

  Text texto(){
    return Text(
      "Formados por transferencia de uno o más electrones de un "
      "átomo o grupo de átomos a otro.",
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