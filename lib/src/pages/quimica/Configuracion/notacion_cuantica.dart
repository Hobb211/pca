import 'package:flutter/material.dart';

class NotacionCuantica extends StatelessWidget {
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
                            "Notación Cuantica",
                            style: letra,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                        )
                      ]),
                    ]),
                  ],
                ),
                Divider(height: 0),
                Container(
                    child: Image(
                  image: AssetImage("assets/notacion.jpg"),
                  height: 250,
                )),
                Divider(
                  height: 0,
                ),
                Stack(children: <Widget>[
                  Row(children: <Widget>[
                    VerticalDivider(
                      width: 60,
                    ),
                    Container(
                      width: 300,
                      height: 120,
                      child: texto(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    ),
                  ]),
                  Column(
                    children: <Widget>[
                      Divider(
                        height: 100,
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: ()=>_profe(context),
                              child: Image(
                            image: AssetImage("assets/PIENSA.png"),
                            height: 340,
                          )),
                          Column(children: <Widget>[
                            Divider(
                              height: 200,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushNamed(context, "DiagramaMoller"),
                                  child: Icon(Icons.arrow_back_ios_sharp),
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                ),
                                VerticalDivider(width: 10,),
                                ElevatedButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, "ejercicios_co"),
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
      "n representa uno de los 7 obitales\n"
      "l representa uno de 4 letras s,p,d,f\n"
      "x representa los electrones del subnivel.",
      style: TextStyle(fontSize: 16),
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
              "Si mal no recuerdo el subnivel:\n s lleva hasta 2\n p lleva hasta 6\n d lleva hasta 10\nf lleva hasta 14\nQUE PERFECTA MEMORIA!!!\n"
              "Te sera util ser como yo memorizando mas adelante",
              style: TextStyle(fontSize: 15),
            ),
          ),
        );
      },
    );
  }
}
