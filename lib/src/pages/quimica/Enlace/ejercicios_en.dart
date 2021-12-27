import 'package:flutter/material.dart';

class ejercicios_en extends StatelessWidget{

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
                        child: Center(child: Text("Ejercicios",style: letra,)),
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
                    height: 240,
                    child: texto(),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  ),

                  Divider(height: 13,),
                  Stack(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Divider(height: 200,),
                        VerticalDivider(width: 180,),
                        Container(
                          child: Image(image: AssetImage("assets/atomo.gif"),height: 140,)
                        ),
                      ]
                      ),
                    Column(
                        children: <Widget>[
                          Divider(height: 20,),
                        Row(
                      children: <Widget>[
                        Container(//profesor 1
                            child: Image(image: AssetImage("assets/profe_1.png"),height: 300,)
                        ),
                      ],
                    )
                          ]
                    ),
                      ]
                  ),
                  Divider(height: 10,),
                  Container(
                    width: 350,
                    height: 100,
                    child: texto2(),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  ),
                  Divider(height: 13,),
                  Stack(
                      children: <Widget>[
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 10,),
                          Container(
                            width: 200,
                            height:60,
                            child: texto3(),
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
                              Divider(height: 40,),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: ()=>profenh3(context),
                                    child: Container(//profesor 2
                                        child: Image(image: AssetImage("assets/profe_1.png"),height: 300,)
                                    ),
                                  ),
                                ],
                              )
                            ]
                        ),
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 170,),
                          InkWell(
                            onTap: ()=>incorrectonh3(context),
                          child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoA(),
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 260,),
                          InkWell(
                              onTap: ()=>correctonh3(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoB(),
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 350,),
                          InkWell(
                              onTap: ()=>incorrectonh3(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoC(),
                            padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),
                      ]
                  ),
                  Divider(height: 0,),
                  Container(
                    width: 350,
                    height: 100,
                    child: texto4(),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  ),
                  Divider(height: 13,),
                  Stack(
                      children: <Widget>[
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 10,),
                          Container(
                            width: 200,
                            height:60,
                            child: texto5(),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ]
                        ),

                        Column(
                            children: <Widget>[
                              Divider(height: 40,),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: ()=>profefel2(context),
                                    child: Container(//profesor 3
                                        child: Image(image: AssetImage("assets/profe_1.png"),height: 300,)
                                    ),
                                  ),
                                ],
                              )
                            ]
                        ),
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 170,),
                          InkWell(
                              onTap: ()=>incorrectofel2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoD(),
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 260,),
                          InkWell(
                              onTap: ()=>incorrectofel2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoE(),
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 350,),
                          InkWell(
                              onTap: ()=>correctofel2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoF(),
                            padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),
                      ]
                  ),
                  Divider(height: 0,),
                  Container(
                    width: 350,
                    height: 100,
                    child: texto6(),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  ),
                  Divider(height: 13,),
                  Stack(
                      children: <Widget>[
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 10,),
                          Container(
                            width: 200,
                            height:60,
                            child: texto7(),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ]
                        ),

                        Column(
                            children: <Widget>[
                              Divider(height: 40,),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: ()=>profecu2(context),
                                    child: Container(//profesor 4
                                        child: Image(image: AssetImage("assets/profe_1.png"),height: 300,)
                                    ),
                                  ),
                                ],
                              )
                            ]
                        ),
                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 170,),
                          InkWell(
                              onTap: ()=>correctocu2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoG(),
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 260,),
                          InkWell(
                              onTap: ()=>incorrectocu2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoH(),
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),

                        Row(children: <Widget>[
                          VerticalDivider(width: 180,),
                          Divider(height: 350,),
                          InkWell(
                              onTap: ()=>incorrectocu2(context),
                              child:
                          Container(
                            width: 200,
                            height:40,
                            child: textoI(),
                            padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                          ),
                        ]
                        ),
                      ]
                  ),
                  Divider(height: 0,),
                  Stack(
                      children: <Widget>[
                        Row(children: <Widget>[
                          VerticalDivider(width: 30,),
                          Container(
                            width: 350,
                            height: 100,
                            child: texto8(),
                            padding: EdgeInsets.symmetric(horizontal: 19,vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ]
                        ),
                        Row(children: <Widget>[
                          VerticalDivider(width: 80,),
                          Divider(height: 380,),
                          Container(
                            width: 300,
                            height:120,
                            child: texto9(),
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
                              Divider(height: 220,),
                              Row(
                                children: <Widget>[
                                  Container(//profesor 5
                                      child: Image(image: AssetImage("assets/BLABLA.png"),height: 300,)
                                  ),
                                  VerticalDivider(width: 10,),
                                  Column(
                                      children: <Widget>[
                                        Divider(height: 200,),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: ()=>Navigator.pushNamed(context, "Metalico"),
                                              child: Icon(Icons.arrow_back_ios_sharp),
                                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                            ),
                                            VerticalDivider(width: 10,),
                                            ElevatedButton(
                                              onPressed: ()=>Navigator.pushNamed(context, "desafios_en"),
                                              child: Icon(Icons.arrow_forward_ios),
                                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                            ),
                                          ],
                                        ),

                                      ]
                                  )
                                ],
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
      "Te estarás preguntando, \n“aun no aprendo nada, ¿comó resolveré ejercicios de este tipo?”...pues no hay mejor "
          "aprendizaje que ensayo y error, mejor aun si me tienes para orientarte .",
      style: TextStyle(
          fontSize: 24
      ),
    );
  }
  Text texto2(){
    return Text(
      "Ejercicio 1",
      style: TextStyle(
          fontSize: 50
      ),
    );
  }
  Text texto3(){
    return Text(
      "¿Qué tipo de enlace es este NH3?",
      style: TextStyle(
          fontSize: 18
      ),
    );
  }
  Text textoA(){
    return Text(
      "E.Metálico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoB(){
    return Text(
      "E.Covalente",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoC(){
    return Text(
      "E.Iónico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text texto4(){
    return Text(
      "Ejercicio 2",
        style: TextStyle(
          fontSize: 50
      ),
    );
  }
  Text texto5(){
    return Text(
      "¿Qué tipo de enlace es este FeL2?",
      style: TextStyle(
          fontSize: 19
      ),
    );
  }
  Text textoD(){
    return Text(
      "E.Metálico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoE(){
    return Text(
      "E.Covalente",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoF(){
    return Text(
      "E.Iónico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text texto6(){
    return Text(
      "Ejercicio 3",
      style: TextStyle(
          fontSize: 50
      ),
    );
  }
  Text texto7(){
    return Text(
      "¿Qué tipo de enlace es este Cu2?",
      style: TextStyle(
          fontSize: 19
      ),
    );
  }
  Text textoG(){
    return Text(
      "E.Metálico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoH(){
    return Text(
      "E.Covalente",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text textoI(){
    return Text(
      "E.Iónico",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }
  Text texto8(){
    return Text(
      "Felicidades",
      style: TextStyle(
          fontSize: 60
      ),
    );
  }
  Text texto9(){
    return Text(
      "Repasar lo aprendido y tomar apuntes te seran util para desarrollar los desafios venideros",
      style: TextStyle(
          fontSize: 20
      ),
    );
  }




  void correctonh3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 240,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: Text("CORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(height: 0,),
                Row(
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text("NH3 es un enlace covalente ya que el Nitrógeno es un no metal al igual que el hidrógeno, talvez solo tuviste suerte...pero ahora ya aprendiste algo nuevo sigamos asi",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ]
                )
              ]
            )
        ),
        );
      },
    );
  }

  void incorrectonh3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 240,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      child: Text("INCORRECTO",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 280,
                            child: Text("NH3 no es nada mas ni menos que E.covalente  te recomiendo revisar una tabla periodica en este caso Nitrógeno y Hidrógeno son No Metales",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void correctofel2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 250,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      child: Text("CORRECTO",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 190,
                            width: 280,
                            child: Text("FeI2 es un E.iónico Felicitaciones ¿sabes por que?...finjamos que no, el yodo es un no metal y tiende a ganar -e pero el hierro es lo opuesto por ende hay  transferencia de -e por eso es E.iónico",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void incorrectofel2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 250,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      child: Text("INCORRECTO",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 190,
                            width: 280,
                            child: Text("FeI2 tiene hierro es un Metal y el yodo que es un No Metal ambos de naturalezas distintas generan una tranferencia de -e ¿recuerdas lo que significa eso?",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void correctocu2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 200,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      child: Text("CORRECTO",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 280,
                            child: Text("La verdad no hay mucho que decir Cu2 represeta el enlace entre dos atomos de cobre de naturaleza metalica uniendo cada -e existente",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void incorrectocu2(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:280,
              height: 220,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      child: Text("INCORRECTO",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 162,
                            width: 280,
                            child: Text("Una caracteristica del cobre es que no es soluble en agua por eso se usa en cañerias y recuerdas lo que dije respecto a la solubilidad de los enlaces",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }


  void profenh3(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:

          Container(
              width:300,
              height: 220,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 280,
                      child: Text("Datasos Quimicos!!!\nQue te facilitaran mucho las cosas:",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Divider(height:30,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 280,
                            child: Text("E.covalente "
                                "NO Metal+NO Metal\nE.iónico Metal+NO Metal\nE.metalico Metal+Metal.",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void profefel2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:
          Container(
              width:300,
              height: 190,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 280,
                      child: Text("Recordemos que:",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Divider(height:20,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 110,
                            width: 280,
                            child: Text("-E.covalente comparte -e\n-E.iónico transfiere -e\n-E.metalico comparte -e\n'Entre todos los atomos'",
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }

  void profecu2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content:Container(
              width:300,
              height: 300,
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 85,
                      width: 300,
                      child: Text("Mi joven Padawan espero serte útil...aca mas conocimientos:",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Divider(height: 0,),
                    Row(
                        children: <Widget>[
                          Container(
                            height: 185,
                            width: 280,
                            child: Text("\n-E.covalente poco soluble en agua\n-E.iónico muy soluble en agua\n-E.metalico No es soluble en agua",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ]
                    )
                  ]
              )
          ),
        );
      },
    );
  }


}