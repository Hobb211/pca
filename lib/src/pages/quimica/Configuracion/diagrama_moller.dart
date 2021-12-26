import 'package:flutter/material.dart';

class DiagramaMoller extends StatelessWidget {
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
              child: Column(children: <Widget>[
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
                            "Diagrama de Möller",
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
                  image: AssetImage("assets/moller.jpg"),
                  height: 350,
                )),
                Divider(
                  height: 20,
                ),
                Stack(children: <Widget>[
                  Row(children: <Widget>[
                    VerticalDivider(
                      width: 170,
                    ),
                    Container(
                      width: 210,
                      height: 305,
                      child: texto(),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    ),
                  ]),
                  Column(
                    children: <Widget>[
                      Divider(
                        height: 50,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              child: Image(
                            image: AssetImage("assets/profe_2.png"),
                            height: 340,
                          )),
                          VerticalDivider(
                            width: 50,
                          ),
                          Column(children: <Widget>[
                            Divider(
                              height: 240,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushNamed(context, "EstructuraAtomo"),
                                  child: Icon(Icons.arrow_back_ios_sharp),
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                ),
                                VerticalDivider(width: 10,),
                                ElevatedButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, "NotacionCuantica"),
                                  child: Icon(Icons.arrow_forward_ios),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color(0xFF38B000))),
                                ),
                              ],
                            ),
                          ])
                        ],
                      )
                    ],
                  ),
                ]),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Text texto() {
    return Text(
      "Este diagrama nos ayudara para expresar la notacion cuantica del elemento cada sub nivel tiene una letra, dicha letra puede llevar una cantidad maxima de electrones suena complicado "
      "pero es bastante simple... la corriente de los electrones la indican las flechas de la imagen desde 1s hasta 7f.",
      style: TextStyle(fontSize: 17.5),
    );
  }

  void _profe(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 144,
            width: 100,
            child: Text(
              "TEXTO EN CONTRUCCION",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
