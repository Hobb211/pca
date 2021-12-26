import 'package:flutter/material.dart';

class GeometriaMolecular extends StatelessWidget{

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

        child: Container(
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

              Stack(
                  children: <Widget>[
              Row(
                children: <Widget>[
                  //ATRAS CAMBIO DE NOMBRE SEGUN ROUTES
                  ElevatedButton(
                      style: boton,
                      onPressed:()=>Navigator.pushNamed(context, "EstructuraM"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Row(
                    children: <Widget>[
                  VerticalDivider(width: 0,),
                  Container(
                    width: 280,
                    child: Text("Geometría Molecular",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ]
                      ),
                ]
              ),
                ],
              ),
              Divider(height: 10,),
              Container(
                  child: Image(image: AssetImage("assets/moleculas.png"),height: 400,)
              ),
              Divider(height: 20,),
              Stack(
                children: <Widget>[
              Row(children: <Widget>[
                VerticalDivider(width: 175,),
              Container(
                width: 200,
                height: 200,
                child: texto(),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                   ),
                  ),
                  ]
                  ),
              Column(
                children: <Widget>[
              Divider(height: 30),
              Stack(
                children: <Widget>[
                  Container(
                      child: Image(image: AssetImage("assets/profe_1.png"),height: 340,)
                  ),
                  Column(
                      children: <Widget>[
                        Divider(height: 250,),
                        Row(
                          children: [
                            VerticalDivider(width: 250,),
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "TablaMolecular"),
                              child: Icon(Icons.arrow_back_ios_sharp),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                            VerticalDivider(width: 10,),
                            ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "ejercicios_es"),
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
    ),
    );
  }
  Text texto(){
    return Text(
      "Estas son las formas que pueden tomar los elementos al "
          "tranformase en moleculas segun sus enlaces, espero que esta ayuda visual te lo facilite al estudiar.",
      style: TextStyle(
          fontSize:18
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