import 'package:flutter/material.dart';

class ejercicios_co extends StatelessWidget {
  final letra = TextStyle(
    fontSize: 26,
  );
  final letra2 = TextStyle(
    fontSize: 22,
  );
  final boton = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0));

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
                  Divider(
                    height: 60,
                  ),
                  Stack(
                    children: <Widget>[
                      Row(children: <Widget>[
                        //ATRAS CAMBIO DE NOMBRE SEGUN ROUTES
                        ElevatedButton(
                            style: boton,
                            onPressed: () =>
                                Navigator.pushNamed(context, "ConfiguracionE"),
                            child: Image(
                              image: AssetImage("assets/arrow.png"),
                              height: 50,
                            )),
                        Row(children: <Widget>[
                          VerticalDivider(
                            width: 0,
                          ),
                          Container(
                            width: 250,
                            child: Text(
                              "Ejercicios",
                              style: letra,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          )
                        ]),
                      ]),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Container(
                      child: Image(
                    image: AssetImage("assets/oxigeno.png"),
                    height: 350,
                  )),
                  Divider(
                    height: 20,
                  ),
                  Stack(children: <Widget>[
                    Row(children: <Widget>[
                      VerticalDivider(
                        width: 175,
                      ),
                      Container(
                        width: 210,
                        height: 140,
                        child: texto(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                      ),
                    ]),
                    Column(children: <Widget>[
                      Container(
                          child: Image(
                        image: AssetImage("assets/profe_1.png"),
                        height: 340,
                      )),
                    ]),
                  ]),
                  Divider(
                    height: 0,
                  ),
                  Stack(
                    children: <Widget>[
                      Row(children: <Widget>[
                        VerticalDivider(
                          width: 30,
                        ),
                        Divider(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          height: 110,
                          child: texto2(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        ),
                      ]),
                      Row(children: <Widget>[
                        VerticalDivider(
                          width: 60,
                        ),
                        Divider(
                          height: 300,
                        ),
                        InkWell(
                          onTap: () => incorrecto_p1(context),
                          child: Container(
                            width: 63,
                            height: 40,
                            child: textoA(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ),
                      ]),
                      Row(children: <Widget>[
                        VerticalDivider(
                          width: 150,
                        ),
                        Divider(
                          height: 300,
                        ),
                        InkWell(
                          onTap: () => correcto_p1(context),
                          child: Container(
                            width: 63,
                            height: 40,
                            child: textoB(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ),
                      ]),
                      Row(children: <Widget>[
                        VerticalDivider(
                          width: 60,
                        ),
                        Divider(
                          height: 430,
                        ),
                        InkWell(
                          onTap: () => incorrecto2_p1(context),
                          child: Container(
                            width: 63,
                            height: 40,
                            child: textoC(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ),
                      ]),
                      Row(children: <Widget>[
                        VerticalDivider(
                          width: 150,
                        ),
                        Divider(
                          height: 430,
                        ),
                        InkWell(
                          onTap: () => incorrecto3_p1(context),
                          child: Container(
                            width: 63,
                            height: 40,
                            child: textoD(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCD6D6),
                            ),
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          Divider(
                            height: 220,
                          ),
                          Row(
                            children: <Widget>[
                              VerticalDivider(
                                width: 120,
                              ),
                              InkWell(
                                onTap: () => null,
                                child: Container(
                                    //profesor 2
                                    child: Image(
                                  image: AssetImage("assets/BLABLA_.png"),
                                  height: 340,
                                )),
                              ),
                            ],
                          ),
                          Divider(
                            height: 0,
                          ),
                          Stack(children: <Widget>[
                            Row(children: <Widget>[
                              VerticalDivider(
                                width: 60,
                              ),
                              Divider(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 115,
                                child: texto3(),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFDCD6D6),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              VerticalDivider(
                                width: 220,
                              ),
                              Divider(
                                height: 300,
                              ),
                              InkWell(
                                onTap: () => incorrectop2(context),
                                child: Container(
                                  width: 63,
                                  height: 40,
                                  child: textoE(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFDCD6D6),
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              VerticalDivider(
                                width: 310,
                              ),
                              Divider(
                                height: 300,
                              ),
                              InkWell(
                                onTap: () => incorrecto_p2(context),
                                child: Container(
                                  width: 63,
                                  height: 40,
                                  child: textoF(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFDCD6D6),
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              VerticalDivider(
                                width: 220,
                              ),
                              Divider(
                                height: 430,
                              ),
                              InkWell(
                                onTap: () => correcto_p2(context),
                                child: Container(
                                  width: 63,
                                  height: 40,
                                  child: textoG(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFDCD6D6),
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              VerticalDivider(
                                width: 310,
                              ),
                              Divider(
                                height: 430,
                              ),
                              InkWell(
                                onTap: () => incorrecto_p2(context),
                                child: Container(
                                  width: 63,
                                  height: 40,
                                  child: textoH(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFDCD6D6),
                                  ),
                                ),
                              ),
                            ]),
                            Column(
                              children: <Widget>[
                                Divider(
                                  height: 230,
                                ),
                                Row(
                                  children: [
                                    VerticalDivider(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () => null,
                                      child: Container(
                                          //profesor 2
                                          child: Image(
                                        image: AssetImage("assets/BLABLA.png"),
                                        height: 340,
                                      )),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 0,
                                ),
                                Stack(children: <Widget>[
                                  Row(children: <Widget>[
                                    VerticalDivider(
                                      width: 30,
                                    ),
                                    Divider(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 300,
                                      height: 130,
                                      child: texto4(),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFFDCD6D6),
                                      ),
                                    ),
                                  ]),
                                  Row(children: <Widget>[
                                    VerticalDivider(
                                      width: 60,
                                    ),
                                    Divider(
                                      height: 340,
                                    ),
                                    InkWell(
                                      onTap: () => correcto_p3(context),
                                      child: Container(
                                        width: 63,
                                        height: 40,
                                        child: textoI(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFFDCD6D6),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Row(children: <Widget>[
                                    VerticalDivider(
                                      width: 150,
                                    ),
                                    Divider(
                                      height: 340,
                                    ),
                                    InkWell(
                                      onTap: () => incorrecto_p3(context),
                                      child: Container(
                                        width: 63,
                                        height: 40,
                                        child: textoJ(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFFDCD6D6),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Divider(
                                      height: 180,
                                    ),
                                    Row(
                                      children: [
                                        VerticalDivider(
                                          width: 128,
                                        ),
                                        InkWell(
                                          onTap: () => null,
                                          child: Container(
                                              //profesor 2
                                              child: Image(
                                            image: AssetImage(
                                                "assets/BLABLA_.png"),
                                            height: 340,
                                          )),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 0,
                                    ),
                                    Container(
                                        child: Image(
                                      image: AssetImage("assets/oxigeno.png"),
                                      height: 350,
                                    )),
                                    Divider(
                                      height: 20,
                                    ),
                                    Stack(children: <Widget>[
                                      Row(children: <Widget>[
                                        VerticalDivider(
                                          width: 190,
                                        ),
                                        Container(
                                          width: 210,
                                          height: 140,
                                          child: texto5(),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xFFDCD6D6),
                                          ),
                                        ),
                                      ]),
                                      Column(children: <Widget>[
                                        Stack(
                                            children: <Widget>[
                                              Container(
                                            child: Image(
                                          image:
                                              AssetImage("assets/profe_1.png"),
                                          height: 340,
                                        )),
                                        Row(
                                          children: [
                                            VerticalDivider(width: 250,),
                                            Column(children: <Widget>[
                                              Divider(
                                                height: 240,
                                              ),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: ()=>Navigator.pushNamed(context, "NotacionCuantica"),
                                                    child: Icon(Icons.arrow_back_ios_sharp),
                                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                                  ),
                                                  VerticalDivider(width: 10,),
                                                  ElevatedButton(
                                                    onPressed: () => Navigator.pushNamed(
                                                        context, "desafios_co"),
                                                    child: Icon(Icons.arrow_forward_ios),
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all(
                                                            Color(0xFF38B000))),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                          ],
                                        )
                                      ]),
                                    ]),
                                  ]),
                                ]),
                              ],
                            )
                          ])
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }

  Text texto() {
    return Text(
      "Acá tenemos un elemento muy común el Oxígeno su N°"
      "Átomico es 8 en esta ocasión trabajaremos con este dato",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text texto2() {
    return Text(
      "Usando el Diagrama de Möller tenemos desde arriba 1s ¿cuántos electrones aguanta este subnivel lo recuerdas?",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text texto3() {
    return Text(
      "ya comprendiste porqué el por que anterior el siguiente en nuestro práctico diagrama ¿Cuántos electrones le corresponden?",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text texto4() {
    return Text(
      "ya comprendiste el porque de la respuesta anterior, te ayudaré el que sigue es 2p para P sus electrones max es 6, pero... ¿Cuántos nos quedan?",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text texto5() {
    return Text(
      "En resumen después de todo lo visto la respuesta para el Oxígeno es 1s2 2s2 2p4",
      style: TextStyle(fontSize: 19),
    );
  }

  Text textoA() {
    return Text(
      "1s1",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoB() {
    return Text(
      "1s2",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoC() {
    return Text(
      "1s6",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoD() {
    return Text(
      "1s8",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoE() {
    return Text(
      "2s6",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoF() {
    return Text(
      "2p2",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoG() {
    return Text(
      "2s2",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoH() {
    return Text(
      "2p4",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoI() {
    return Text(
      "2s4",
      style: TextStyle(fontSize: 17.5),
    );
  }

  Text textoJ() {
    return Text(
      "2p6",
      style: TextStyle(fontSize: 17.5),
    );
  }

  void correcto_p1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: Text(
                    "CORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "El subnivel S puede tener como máximo solo 2 electrones lo que nos deja 6 electrones que debes distribuir en los siguientes subniveles hasta usarlos todos en el caso del Oxígeno",
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrecto_p1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 180,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "si bien el subnivel S puede tener menos de su max. de electrones en esta situacion necesitas llenarlo por completo ya que el oxígeno tiene 8 electrones ",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrecto2_p1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 260,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 180,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 200,
                    width: 280,
                    child: Text(
                      "El subnivel S puede tener como máximo solo 2 electrones ¿recuerdas cuendo te hablé de la notación cuántica? haste un ayuda memorias pero recuerda no usarlo en tus Exámenes",
                      style: TextStyle(fontSize: 20.5),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrecto3_p1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 180,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "En este caso 8 es el número máximo de electrones del oxígeno pero deben distribuirse con los demás subniveles",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void correcto_p2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 210,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: Text(
                    "CORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 130,
                    width: 280,
                    child: Text(
                      "Excelente, creo que vamos progresando el siguiente subnivel tendrá un leve cambio",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrectop2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 200,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "¿6 enserio? ponele voluntad jajaja recuerda S sólo aguanta máximo 2 electrones",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrecto_p2(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 200,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "uff casi!!!, pero analicemos el diagrama, luego de 1s NO SIGUE 2p te acabas de saltar 2s",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void incorrecto_p3(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 200,
                  child: Text(
                    "INCORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "1s2 2s2 suman un total de 4 electrones lo que nos deja otros 4, recuerdas que el oxígeno tiene 8, son simples sumas y restas segun el máximo de cada subnivel... si fuera 2p6 sumarían 10 y no 8",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }

  void correcto_p3(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              width: 280,
              height: 240,
              child: Column(children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: Text(
                    "CORRECTO",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Row(children: <Widget>[
                  Container(
                    height: 180,
                    width: 280,
                    child: Text(
                      "sabemos que el subnivel P aguanta hasta 6 electrones pero solo nos quedaban 4, los subnivel no necesitan tener siempre su máximo solo hasta que consumas todos ellos, al quedar en cero el ejercicio termina FELICITACIONES!",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ])
              ])),
        );
      },
    );
  }
}
