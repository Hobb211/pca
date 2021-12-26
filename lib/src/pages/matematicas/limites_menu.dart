import 'package:flutter/material.dart';


class LimitesMenu extends StatelessWidget {

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
        title: Text('Límites',style: TextStyle(fontSize: 30),),
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
                onPressed:()=>Navigator.pushNamed(context, 'IntroLimites'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'Limites1'),
                    style: boton,
                    child: Text('¿Que es \n     un\n  límite?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'UsoLimite'),
                    style: boton,
                    child: Text('¿Cual es \n  su uso?',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed:()=>Navigator.pushNamed(context, 'LimiteIndeterminado'),
                style: boton,
                child: Text('          Límites\nIndeterminados',style: TextStyle(fontSize: 18),)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'EjercicioLimites'),
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed:()=>Navigator.pushNamed(context, 'ejemplosLimites'),
                    style: boton,
                    child: Text(' Ejemplos\nde límites',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, 'Desafio_Limites'),
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