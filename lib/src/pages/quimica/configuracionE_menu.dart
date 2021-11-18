import 'package:flutter/material.dart';


class ConfiguracionEMenu extends StatelessWidget {

  final letra=TextStyle(fontSize: 24,);
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
        toolbarHeight: 80,
        title: Text('Configuración\nElectrónica',style: TextStyle(fontSize: 30),),
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
                    child: Text('Estructura\ndel Atomo',style: letra,)
                ),
                ElevatedButton(
                    onPressed: null,
                    style: boton,
                    child: Text('Diagrama\n       de\n   Moller',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: null,
                style: boton,
                child: Text('Notación\nCuantica',style: letra,)
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
                    child: Text('Desafío\n  Final',style: letra,)
                ),
              ],
            ),
            Divider(height: 30,),
          ],
        ),
      ),
    );
  }


}
