import 'package:flutter/material.dart';

class EjerciciosM2 extends StatelessWidget{

  final letra=TextStyle(fontSize: 26,);
  final letra2=TextStyle(fontSize: 22,);
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );
  final boton2=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFDCD6D6)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
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
                      onPressed:()=>Navigator.pushNamed(context, "Matrices"),
                      child: Image(image: AssetImage("assets/arrow.png"),height: 50,)
                  ),
                  Container(
                    width: 250,
                    child: Text("Ejercicios 2",style: letra,),
                    padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCD6D6),
                    ),
                  )
                ],
              ),
              Divider(height: 15,),
              Container(
                width: 380,
                height: 120,

                child:Row(
                  children: <Widget>[
                    InkWell(

                      child: Container(
                        height:100,
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDCD6D6),
                        ),
                        child: Text("Talk to the sensei. ",style: TextStyle(fontSize:18,color: Colors.black87),),
                      ),
                    ),
                    InkWell(
                      

                        child: Container(
                          height: 80,
                          width: 230,
                          child: Image(image: AssetImage("assets/matriz_ex2.png"),height: 100,),
                        )
                    )
                  ],
                ),
              ),
              Divider(height: 10,),
              Container(
                width:415,
                height:200,
                child: Row(
                  children: <Widget>[
                    InkWell(
                        onTap:()=>_formula3(context),
                        child: Container(
                          child: Image(image: AssetImage("assets/get_index.png"),height: 178),
                        )

                    ),
                    InkWell(
                        onTap:()=>_formula4(context),
                        child: Container(
                          child: Image(image: AssetImage("assets/print_ex2.png"),height: 176),
                        )
                    ),

                  ],
                ),
              ),

              Divider(height: 110,),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap: ()=>_profe(context),
                      child: Image(image: AssetImage("assets/habla.png"),height: 210,)
                  ),
                  VerticalDivider(width: 100,),
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
                                    onPressed: ()=>Navigator.pushNamed(context, "EjerciciosM"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "DesafioFinalM"),
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
    );
  }


  void _profe(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 150,
            width: 100,
            child: Text("En la Matriz, queremos buscar "
                "cuántos números 5 existen, y cuales son "
                "sus posiciones dentro de ésta. "
                "GO to the CODE.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _profe3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 280,
            width: 100,
            child: Text("Como lo hemos hecho antes, con el ciclo for "
                "podemos acceder facilmente a estos datos, "
                "recorriendo cada espacio de memoria. "
                "En este caso, cada array, tiene un array "
                "con las posiciones del elemento... "
                "interesante... no?",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula3(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 200,
            width: 100,
            child: Text("se utiliza una función de la libreria para encontrar "
                "en la matriz, el total de repeticiones del dato. "
                "y entrega en un array, las posiciones de cada dato,"
                "sigue con el mini-sempai. "
                ,
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

  void _formula4(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 250,
            width: 100,
            child: Text("Aqui están representados los valores "
                "de cada posicion de las coincidencias encontradas "
                "en la matriz del número buscado. "
                "se recorre la lista según la cantidad "
                "de soluciones.",
              style: TextStyle(fontSize: 20),
            ),
          ),

        );
      },
    );
  }

}