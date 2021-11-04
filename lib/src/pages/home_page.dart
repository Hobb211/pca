import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {

  final letra=TextStyle(fontSize: 30,);
  final boton=ButtonStyle(
      fixedSize: MaterialStateProperty.all(Size(240,60)),
      backgroundColor: MaterialStateProperty.all(Colors.green)
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ElevatedButton(onPressed: (){}, child: Text('Química',style: letra,),style: boton,),
              Divider(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, 'Fisica'), child: Text('Física',style: letra,),style: boton,),
              Divider(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Matemáticas',style: letra,),style: boton,),
              Divider(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Computación',style: letra,),style: boton,),
            ],
          ),
      ),
      ),
    );
  }


}
