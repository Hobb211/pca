import 'package:flutter/material.dart';

class IntroMRU extends StatelessWidget{

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);

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
            children: <Widget>[
              Divider(height: 60,),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
                      elevation: MaterialStateProperty.all(0)
                    ),
                    onPressed:()=>Navigator.pushNamed(context, 'MRU'),
                    child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Introducción",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 50,),
              Container(
                width: 350,
                height: 400,
                child: Text("Introducción",style: letra,),
                padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFDCD6D6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}