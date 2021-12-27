import 'package:flutter/material.dart';


class EstructuraMMenu extends StatelessWidget {

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
        title: Text('Estructura Molecular',style: TextStyle(fontSize: 30),),
        leading: InkWell(
          child: Container(
            child: Image(image: AssetImage("assets/home.png")),
            padding: EdgeInsets.all(5),
          ),
          onTap: ()=>Navigator.pushNamed(context, "Quimica"),
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
            Divider(height: 65,),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, 'IntroEstructura'),
                style: boton,
                child: Text('Introducción',style: letra2,)
            ),
            Divider(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'DiagramaLewis'),
                    style: boton,
                    child: Text('Diagrama\n de Lewis',style: letra,)
                ),
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'TablaMolecular'),
                    style: boton,
                    child: Text('     Tabla\nGeometría\nMolecular',style: letra,)
                ),
              ],
            ),
            Divider(height: 40,),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, 'GeometriaMolecular'),
                style: boton,
                child: Text('Geometría\nMolecular',style: letra,)
            ),
            Divider(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <ElevatedButton>[
                ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, 'ejercicios_es'),
                    style: boton,
                    child: Text('Ejercicios',style: letra,)
                ),
                ElevatedButton(
                    onPressed:  ()=>Navigator.pushNamed(context, 'desafios_es'),
                    style: boton,
                    child: Text('Desafío\n  Final',style: letra,)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }





}
