import 'package:flutter/material.dart';

class Limites1 extends StatelessWidget{

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
    final letra2=TextStyle(fontSize: 22,);

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
                Divider(height: 8,),
                Row(
                  children: <Widget>[
                    InkWell(
                        onTap:()=>Navigator.pushNamed(context, 'Limites'),
                        child: Image(image: AssetImage("assets/arrow.png"),height: scaleHeigth*50,)
                    ),
                    VerticalDivider(width: 10,),
                    Container(
                        width: scaleWidth*290,
                        height: scaleHeigth*250,
                        child: texto3(scaleHeigth),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    )
                  ],
                ),
                Divider(height: scaleHeigth*30,),
                Container(
                   width: scaleHeigth*200,
                            height: scaleHeigth*130,
                            child: Image(image: AssetImage("assets/foto limite.png")),
                            padding: EdgeInsets.all(3),
                            
                ),
                
                Divider(height: scaleHeigth*10,),
                Row(
                  children: <Widget>[
                    VerticalDivider(),
                    InkWell(
                        onTap: null,
                        child: Image(image: AssetImage("assets/BLABLA.png"),height: scaleHeigth*210,)
                    ),
                    VerticalDivider(width: scaleWidth*5,),
                    Column(
                        children: <Widget>[
                          Container(
                                    width: scaleWidth*210,
                          height: scaleHeigth*260,
                          child: texto2(scaleHeigth),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                            ),
                          ),
                          Divider(height: scaleHeigth*10,),

                          Row(
                            children: <Widget>[


                            
                              ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "IntroLimites"),
                              child: Icon(Icons.arrow_back_ios),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                              VerticalDivider(width: scaleWidth*5,),
                              ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "UsoLimite"),
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
      "La separación de variables es un método común para resolver ecuaciones diferenciales"
       ,
      style: TextStyle(
          fontSize: (24*scale)
      ),
    );
  }
   Text texto2(double scale){
    return Text(
      "x → a se lee “cuando x tiende al valor a en la función”, es decir, cuando la variable x toma valores muy cercanos al valor a."
       ,
      style: TextStyle(
          fontSize: (20*scale)
      ),
    );
  }
   Text texto3(double scale){
    return Text(
      "La simbologia que usaremos para estudiar los límites de una función acercándose a algún valor en específico es la siguiente: "
       ,
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
            child: Text("Los movimientos de caida libre son movimientos MRUA en el eje y",
              style: TextStyle(fontSize: 20*scaleWidth),
            ),
          ),

        );
      },
    );
  }
}