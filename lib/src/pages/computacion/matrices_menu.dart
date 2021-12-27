import 'package:flutter/material.dart';


class MatricesMenu extends StatelessWidget {

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
        title: Text('Matrices',style: TextStyle(fontSize: 30),),
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
                onPressed: ()=>Navigator.pushNamed(context,'IntroMatrices'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"Arreglos"),
                    style: boton,
                    child: Text('¿Qué es\n     un\n  array?',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"Matriz"),
                    style: boton,
                    child: Text('¿Qué es\n     una\n  matriz?',style: letra,)
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"CreandoMatriz"),
                style: boton,
                child: Text('¿Cómo se \n crea una\n  matriz?',style: letra,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"MatrizJava"),
                    style: boton,
                    child: Text('Matrices\n       en\n    Java',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context,"MatrizPython"),
                    style: boton,
                    child: Text('Matrices\n       en\n  Python',style: letra,)
                ),

              ],
            ),
            Divider(),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"MatrizPythonC"),
                style: boton,
                child: Text('Matrices\n       en\n  Python',style: letra,)
            ),
            Divider(),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"EjerciciosM"),
                style: boton,
                child: Text('Ejercicios',style: letra,)
            ),
            Divider(),
            ElevatedButton(onPressed: ()=>Navigator.pushNamed(context,"EjerciciosM2"),
                style:boton,
                child: Text('Ejercicios 2',style:letra,)
            ),
            Divider(),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context,"DesafioFinalM"),
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