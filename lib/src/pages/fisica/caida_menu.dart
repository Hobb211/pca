import 'package:flutter/material.dart';


class CaidaMenu extends StatelessWidget {

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 20,);
  final boton=ButtonStyle(
    fixedSize: MaterialStateProperty.all(Size(160,160)),
    backgroundColor: MaterialStateProperty.all(Color(0xFF2AFF1B)),
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
        title: Text('Caida Libre',style: TextStyle(fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: _crearBotones(),
        ),
      ),
    );
  }

  Column _crearBotones(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
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
                child: Text('Formula',style: letra,)
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
            child: Text('Ejercicios',style: letra,)
        ),
        Divider(height: 15,),
        ElevatedButton(
            onPressed: null,
            style: boton,
            child: Text('Desafío\n  Final',style: letra,)
        ),
      ],
    );
  }


}
