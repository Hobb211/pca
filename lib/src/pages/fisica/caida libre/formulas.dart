import 'package:flutter/material.dart';

class FormulasCaida extends StatelessWidget{

  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  @override
  Widget build(BuildContext context) {
    final widthBase=411.42857142857144;
    final heigthBase=797.7142857142857;
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    final scaleWidth=screenWidth/widthBase;
    final scaleHeigth=screenHeigth/heigthBase;

    final letra=TextStyle(fontSize: scaleWidth*26,);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          top: true,
          bottom: false,
          left: false,
          right: false,
          child:  Center(
            child: Column(
              children: <Widget>[
                Divider(height: scaleHeigth*8,),
                Row(
                  children: <Widget>[
                    InkWell(
                        onTap:()=>Navigator.pushNamed(context, "Caida"),
                        child: Image(image: AssetImage("assets/arrow.png"),height: scaleHeigth*50,)
                    ),
                    VerticalDivider(width: 30,),
                    Container(
                      width: scaleWidth*250,
                      child: Text("Formulas",style: letra,),
                      padding: EdgeInsets.symmetric(horizontal: scaleHeigth*68,vertical: scaleWidth*20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    )
                  ],
                ),
                Divider(height: scaleHeigth*50,),
                Container(
                  width: scaleWidth*350,
                  height: scaleHeigth*250,
                  child: texto(scaleHeigth),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFDCD6D6),
                  ),
                ),
                Divider(height: scaleHeigth*20,),
                Container(
                  width: scaleWidth*265,
                  padding: EdgeInsets.symmetric(vertical: scaleHeigth*10,horizontal: scaleWidth*32),
                  decoration: BoxDecoration(
                    color: Color(0xFFDCD6D6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Row(
                    children: <Widget>[
                      InkWell(
                        onTap: ()=>_formula1(context,scaleHeigth,scaleWidth),
                        child: Container(
                          height: scaleHeigth*35,
                          width: scaleWidth*46,
                          child: Text("y(t)",style: TextStyle(fontSize: scaleWidth*24,color: Colors.red),),
                        ),
                      ),
                      Text("=",style: TextStyle(fontSize: scaleWidth*24)),
                      InkWell(
                        onTap: ()=>_formula2(context,scaleHeigth,scaleWidth),
                        child: Container(
                            height: scaleHeigth*35,
                            width: scaleWidth*25,
                            child: Row(
                              children: [
                                Text("y",style: TextStyle(fontSize: scaleWidth*24,color: Colors.blue)),
                                Column(
                                  children: [
                                    Divider(height: scaleHeigth*15,),
                                    Text("0",style: TextStyle(fontSize: scaleWidth*14,color: Colors.blue,)),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ),
                      Text("-",style: TextStyle(fontSize: scaleWidth*24)),
                      InkWell(
                        onTap: ()=>_formula3(context,scaleHeigth,scaleWidth),
                        child: Container(
                            height: 35*scaleHeigth,
                            width: 100*scaleWidth,
                            child: Row(
                              children: [
                                Text("(1/2)g*t",style: TextStyle(fontSize: scaleWidth*24,color: Colors.green)),
                                Column(
                                    children: [
                                      Text("2",style: TextStyle(fontSize: scaleWidth*14,color: Colors.green)),
                                      Divider(height: 15*scaleHeigth,),
                                    ]
                            )
                            ]
                        ),
                      ),
                      )
                    ],

                  ),
                ),
                Divider(height: scaleHeigth*80,),
                Row(
                  children: <Widget>[
                    VerticalDivider(),
                    InkWell(
                        onTap: ()=>_profe(context,scaleHeigth,scaleWidth),
                        child: Image(image: AssetImage("assets/BLABLA.png"),height: scaleHeigth*210,)
                    ),
                    VerticalDivider(width: scaleWidth*50,),
                    Column(
                        children: <Widget>[
                          Divider(height: scaleHeigth*100,),
                          Row(
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushNamed(context, "IntroCaida"),
                                  child: Icon(Icons.arrow_back_ios_sharp),
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                ),
                                VerticalDivider(width: 10,),
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushNamed(context, "FormulasCaida"),
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
            ),
          ),
        ),
      ),
    );
  }

  Text texto(double scale){
    return Text(
      "La caída libre usa una formula MRUA para definir su movimiento "
          "en el eje y, donde la posición inicial es la altura h, "
          "la velocidad inicial 0 y la aceleración es la gravedad.",
      style: TextStyle(
          fontSize: (24*scale)
      ),
    );
  }

  void _profe(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 144*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Debes recordar que en MRU x representa la posición,"
                " v representa la velocidad, a la aceleración y t el tiempo.",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },

    );
  }

  void _formula1(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la posición vertical en el tiempo",
              style: TextStyle(fontSize: 20*scaleHeight),
            ),
          ),

        );
      },
    );
  }

  void _formula2(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 50*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la altura inicial del objeto",
              style: TextStyle(fontSize: 20*scaleHeight),
            ),
          ),

        );
      },
    );
  }

  void _formula3(BuildContext context,double scaleHeight,double scaleWidth){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: 120*scaleHeight,
            width: 100*scaleWidth,
            child: Text("Representa la distancia de caida recorrida del objeto despues de "
                "una cantidad de tiempo debido a la gravedad",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }

}