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
        leading: InkWell(
          child: Container(
            child: Image(image: AssetImage("assets/home.png")),
            padding: EdgeInsets.all(5),
          ),
          onTap: ()=>Navigator.pushNamed(context, "Computacion"),
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
                onPressed: ()=>Navigator.pushNamed(context,"IntroCompuertas"),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"PuertaLogica"),
                    style: boton,
                    child: Text('¿Qué es \n    una\n puerta\n  lógica?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"TiposPuertas"),
                    style: boton,
                    child: Text('Tipos de\n puertas\n  lógicas',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"TiposPuertas2"),
                style: boton,
                child: Text('Tipos de\n puertas\nlógicas 2',style: letra,)
            ),
            Divider(height:20),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"TiposPuertas3"),
                style: boton,
                child: Text('Tipos de\n puertas\nlógicas 3',style: letra,)
            ),
            Divider(height: 20),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"TiposPuertas4"),
                style: boton,
                child: Text('Tipos de\n puertas\nlógicas 4',style: letra,)
            ),
            Divider(height: 20),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"Ejemplo"),
                style: boton,
                child: Text('Ejemplo',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"EjerciciosC"),
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"EjerciciosC2"),
                    style: boton,
                    child: Text('Ejercicios\n 2',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"DesafioFinalC"),
                style: boton,
                child: Text('Desafío\n   Final',style: letra,)
            ),

          ],
        ),
      ),
    );
  }



}