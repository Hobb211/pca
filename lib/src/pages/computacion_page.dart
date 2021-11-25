import 'package:flutter/material.dart';


class ComputacionPage extends StatelessWidget {

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
        title: Text('Computación',style: TextStyle(fontSize: 30),),
        leading: InkWell(
          child: Container(
            child: Image(image: AssetImage("assets/home.png")),
            padding: EdgeInsets.all(5),
          ),
          onTap: ()=>Navigator.pushNamed(context, "Home"),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Matrices'), child: Stack(children: texto('Matrices')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Compuertas'), child: Stack(children: texto('Compuertas\n      Logicas')),style: boton),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Listas'), child: Stack(children: texto('Listas Dobles')),style: boton),
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
