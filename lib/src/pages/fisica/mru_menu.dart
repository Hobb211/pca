import 'package:flutter/material.dart';


class MRUmenu extends StatelessWidget {

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
        title: Text('MRU',style: TextStyle(fontSize: 30),),
        leading: InkWell(
          child: Container(
            child: Image(image: AssetImage("assets/home.png")),
            padding: EdgeInsets.all(5),
          ),
          onTap: ()=>Navigator.pushNamed(context, "Fisica"),
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
                onPressed:()=>Navigator.pushNamed(context, 'IntroMRU'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, "MRULeccion"),
                    style: boton,
                    child: Text('MRU',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, "MRUALeccion"),
                    style: boton,
                    child: Text('MRUA',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, "SimuladorMru"),
                style: boton,
                child: Text('Simulador',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, "EjerciciosMru"),
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, "DesafioMru"),
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
