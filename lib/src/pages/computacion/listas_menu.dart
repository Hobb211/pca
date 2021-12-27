import 'package:flutter/material.dart';


class ListasMenu extends StatelessWidget {

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
        title: Text('Listas Dobles',style: TextStyle(fontSize: 30),),
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
                onPressed: ()=>Navigator.pushNamed(context,'IntroListas'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,'Nodo'),
                    style: boton,
                    child: Text('¿Qué es \n     un\n  nodo?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,'ListaEnlazada'),
                    style: boton,
                    child: Text('  ¿Qué es\n una lista\nenlazada?',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,'ListaDoble'),
                style: boton,
                child: Text('¿Qué es una\n lista doble?',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,'FuncionListaD'),
                    style: boton,
                    child: Text('¿Cómo\nfunciona\nuna lista\n  doble?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,'ListaPython'),
                    style: boton,
                    child: Text('    Listas\ndobles en\n  Python',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,'EjerciciosL'),
                style: boton,
                child: Text('Ejercicios',style: letra,)
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,'EjerciciosL2'),
                style: boton,
                child: Text('Ejercicios2',style: letra,)
            ),
            Divider(),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,'DesafioFinalL'),
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