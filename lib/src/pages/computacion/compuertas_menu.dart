import 'package:flutter/material.dart';


class CompuertasMenu extends StatelessWidget {

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final boton=ButtonStyle(
    fixedSize: MaterialStateProperty.all(Size(160,160)),
    backgroundColor: MaterialStateProperty.all(Color(0xFF38B000)),
    shape: MaterialStateProperty.all(
        CircleBorder(
            side: BorderSide(
                color: Colors.white,
                width: 5
            )
        )
    ),
    foregroundColor: MaterialStateProperty.all(Colors.black),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compuertas Logicas',style: TextStyle(fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Divider(height: 30,),
            ElevatedButton(
                onPressed: null,
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: null,
                    style: boton,
                    child: Text('¿Que es \n    una\n puerta\n  logica?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: null,
                    style: boton,
                    child: Text('Tipos de\n puertas\n  logicas',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: null,
                style: boton,
                child: Text('Tipos de\n puertas\nlogicas 2',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: null,
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed: null,
                    style: boton,
                    child: Text('Simulador',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: null,
                style: boton,
                child: Text('Desafío\n   Final',style: letra,)
            ),
            Divider(height: 30,),
          ],
        ),
      ),
    );
  }



}