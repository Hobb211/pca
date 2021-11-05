import 'package:flutter/material.dart';


class MatematicasPage extends StatelessWidget {

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 20,);
  final boton=ButtonStyle(
    fixedSize: MaterialStateProperty.all(Size(300,120)),
    backgroundColor: MaterialStateProperty.all(Color(0xFF2AFF1B)),
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
        title: Text('Matemáticas',style: TextStyle(fontSize: 30),),
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
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Quimica'), child: Stack(children: texto('   Ecuaciones\n Diferenciales')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Fisica'), child: Stack(children: texto(' Limites')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Matematicas'), child: Stack(children: texto('  Curvas\n de Nivel')),style: boton),
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
