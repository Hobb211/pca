import 'package:flutter/material.dart';


class QuimicaPage extends StatelessWidget {

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 20,);
  final boton=ButtonStyle(
    fixedSize: MaterialStateProperty.all(Size(300,120)),
    backgroundColor: MaterialStateProperty.all(Color(0xFF38B000)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80)
        )
    ),
    foregroundColor: MaterialStateProperty.all(Colors.black),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Química',style: TextStyle(fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'EnlaceQ'), child: Stack(children: texto('  Enlace\n Químico')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'EstructuraM'), child: Stack(children: texto(' Estructura\n  Molecular')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'ConfiguracionE'), child: Stack(children: texto('Configuración\n   Electrónica')),style: boton),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> texto(texto){
    final letra=TextStyle(
      fontSize: 35,
      foreground: Paint()
        ..style=PaintingStyle.stroke
        ..strokeWidth = 6
        ..color = Colors.black,
    );
    final letra2=TextStyle(
        fontSize: 35,
        color: Colors.white
    );

    return <Widget>[
      Text(texto,style: letra,),
      Text(texto,style: letra2,)
    ];
  }

}
