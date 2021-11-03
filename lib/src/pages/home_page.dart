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
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){}, child: Text('Química',style: letra,),style: boton,),
            Divider(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Física',style: letra,),style: boton,),
            Divider(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Matemáticas',style: letra,),style: boton,),
            Divider(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Computación',style: letra,),style: boton,),
          ],
        ),
      ),
    );
  }
}
