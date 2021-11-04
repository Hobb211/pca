import 'package:flutter/material.dart';



class FisicaPage extends StatelessWidget {

  final letra=TextStyle(fontSize: 30,);
  final boton=ButtonStyle(
      fixedSize: MaterialStateProperty.all(Size(240,60)),
      backgroundColor: MaterialStateProperty.all(Colors.green),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fisica',style: letra,),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: null,
                    style: boton,


                    child: Text('Menu',style: letra,)
                  ),
              ],
            ),
        ),
      ),
    );
  }


}
