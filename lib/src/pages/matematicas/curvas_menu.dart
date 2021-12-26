import 'package:flutter/material.dart';


class CurvasMenu extends StatelessWidget {

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
        title: Text('Curvas de nivel',style: TextStyle(fontSize: 30),),
        leading: InkWell(
          child: Container(
            child: Image(image: AssetImage("assets/home.png")),
            padding: EdgeInsets.all(5),
          ),
          onTap: ()=>Navigator.pushNamed(context, "Matematicas"),
        ),
        backgroundColor: Color(0xFF2B2927),
        elevation: 0,
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
                onPressed:()=>Navigator.pushNamed(context, 'IntroCurvas'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'QueEsUnaCurva'),
                    style: boton,
                    child: Text('   ¿Que\n  es una\ncurva de\n   nivel?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'UsoCurvas'),
                    style: boton,
                    child: Text('¿Cual es\nsu uso?',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, 'CalculoCurvas'),
                style: boton,
                child: Text('  Calculo\nde Curvas\n  de nivel',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'EjerciciosCurvas'),
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'EjemploCurvas'),
                    style: boton,
                    child: Text('Ejemplos',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, 'DesafioCurvas'),
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