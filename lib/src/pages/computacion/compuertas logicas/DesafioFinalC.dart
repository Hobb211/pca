import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:math';
String R1 = "";
String RP1 = "0";
String R2= "";
String RP2= "1";
String R3= "";
String RP3= "1";
String resultado="";
int puntaje = 0;
BoxDecoration container=BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFDCD6D6),);
class DesafioFinalC extends StatefulWidget{

    @override
    State<DesafioFinalC> createState() => _DesafioFinalCState();

  }
class _DesafioFinalCState extends State<DesafioFinalC> {

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final letraP=TextStyle(fontSize: 16,);
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );
  final boton2=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFDCD6D6)),
      elevation: MaterialStateProperty.all(0)
  );
  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Form(
          key: FormKey,
          child:
          Container(
            height: MediaQuery.of(context).size.height,decoration: BoxDecoration(
            image: DecorationImage(
    image: AssetImage("assets/background.gif"),
    fit: BoxFit.cover,
    ),
    ),
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    Divider(height: 60,),
    Row(
    children: <Widget>[
    ElevatedButton(
    style: boton,
    onPressed:()=>Navigator.pushNamed(context, "Compuertas"),
    child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
    ),
    Container(
    width: 250,
    child: Text("Desafío Final",style: letra,),
    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),
    )
    ],
    ),
    Divider(height: 20,),
    Container(
    width: 300,
    height: 65,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),
    child:Row(
    children: <Widget>[
    InkWell(

    child: Container(
    height:50,
    width: 280,
    child: Text("Si A0 = 1, "
    "Si A1 = 0, "
    "Si B0 = 0, "
    "Si B1 = 1. "
    "M = ?, m = ?, I = ?."
    ,style: TextStyle(fontSize:20,color: Colors.black87),),
    ),
    ),
    ],
    ),
    ),
    Container(
    width:380,
    height:320,
    child: Row(
    children: <Widget>[
    InkWell(
    child: Container(

    child: Image(image: AssetImage("assets/logic_final.png"),height: 300),
    )

    ),


    ],
    ),
    ),
    Divider(height: 0,),
    Row(
    children: <Widget>[
    Container(
    width: 125,
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),

    child: TextFormField(
    decoration: InputDecoration(
    hintText: "Ingrese M: "
    ),
    onChanged: (value)=>setState(()=>R1=(value)),
    ),
    ),
    VerticalDivider(),

    Container(
    width: 125,
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),

    child: TextFormField(
    decoration: InputDecoration(
    hintText: "Ingrese m: "
    ),
    onChanged: (value)=>setState(()=>R2=(value)),
    ),
    ),
    VerticalDivider(),
    Container(
    width: 125,
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),

    child: TextFormField(
    decoration: InputDecoration(
    hintText: "Ingrese I: "
    ),
    onChanged: (value)=>setState(()=>R3=(value)),
    ),
    ),
    ],
    ),
    Divider(height: 10,),
    InkWell(
    child:Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
    ),
    height: MediaQuery.of(context).size.height/12-5,
    width: MediaQuery.of(context).size.width/2-50,
    child: Text("Validar",style: letraP,),
    padding: EdgeInsets.symmetric(vertical:15,horizontal: 40),
    ),
    onTap: (){
    final isValid=FormKey.currentState!.validate();
    if (isValid){
    puntaje = 1;
    if(R1==RP1) {puntaje += 2;};
    if(R2==RP2) {puntaje += 2;};
    if(R3==RP3) {puntaje += 2;};

    if(puntaje>= 4){resultado="Aprobado";}else{resultado="Reprobado";}
    _resultado(context);
    }
    },
    ),

    Divider(height: 20,),

    Row(
    children: <Widget>[
    ElevatedButton(
    style: boton,
    onPressed: ()=>_profe(context),
    child: Image(image: AssetImage("assets/BLABLA.png"),height: 210,)
    ),
    Column(
    children: <Widget>[
    Row(
    children: <Widget>[

    ]
    ),
    Column(
    children: <Widget>[
    Divider(height: 100,),
    Row(
    children: <Widget>[
    ElevatedButton(
    onPressed: ()=>Navigator.pushNamed(context, "EjerciciosC2"),
    child: Icon(Icons.arrow_back_ios_sharp),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
    ),
    VerticalDivider(width: 10,),
    ElevatedButton(
    onPressed: ()=>Navigator.pushNamed(context, "Compuertas"),
    child: Icon(Icons.arrow_forward_ios),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
    ),
    ]
    )
    ]
    )
    ],
    )
    ],
    )
    ],
    ),
    ),
    ),
        ),
    );
  }

  void _profe(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
              height: 150,
              width: 100,
              child: Center(child:Text("Tu estado es:  ${resultado} "
                ,style: TextStyle(fontSize: 20),))
          ),

        );
      },
    );
  }

  void _resultado(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 2 / 3 - 50,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: container,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 10,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.all(20),
                    child: Center(child: Text(
                      "Resultados", style: TextStyle(fontSize: 26),)),
                  ),
                  Divider(),
                  Container(
                    decoration: container,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 10,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.all(20),
                    child: Center(child: Text("Puntaje: ${puntaje - 1}/6 ",
                      style: TextStyle(fontSize: 20),)),
                  ),
                  Divider(),
                  Container(
                    decoration: container,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 10,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.all(20),
                    child: Center(child: Text(
                      "Respuestas", style: TextStyle(fontSize: 26),)),
                  ),
                  Divider(),
                  Container(
                      decoration: container,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      padding: EdgeInsets.all(20),
                      child: Center(child: Text("M = ${RP1} \n"
                          "m = ${RP2}\n"
                          "I = ${RP3}.", style: TextStyle(fontSize: 20),))
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}