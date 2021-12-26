import 'package:flutter/material.dart';

class UsoCurvas extends StatelessWidget{

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
                        onTap:()=>Navigator.pushNamed(context, 'Curvas'),
                        child: Image(image: AssetImage("assets/arrow.png"),height: scaleHeigth*50,)
                    ),
                    VerticalDivider(width: 30,),
                    Container(
                      width: scaleWidth*220,
                      child: Text("Uso de las curvas",style: letra,),
                      padding: EdgeInsets.symmetric(horizontal: scaleHeigth*45,vertical: scaleWidth*10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    )
                  ],
                ),
                Divider(height: scaleHeigth*25,),
                Row(
                  children: <Widget>[
                  VerticalDivider(width: 5,),
                  InkWell(
                        onTap: ()=>_profe(context,scaleHeigth,scaleWidth),
                        child: Image(image: AssetImage("assets/profe_2.png"),height: scaleHeigth*210,)
                    ),
                   
                   VerticalDivider(width: 30,),
                   Container(
                      width: scaleWidth*250,
                      height: scaleHeigth*280,
                      child: texto(scaleHeigth),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                   ),



                ],

                ),
                Divider(height: scaleHeigth*25,),
                Row(
                  children: <Widget>[
                    VerticalDivider(),
                    InkWell(
                        onTap:null,
                        child: Image(image: AssetImage("assets/BLABLA.png"),height: scaleHeigth*210,)
                    ),
                    Container(
                 
                         width: scaleWidth*200,
                        height: scaleHeigth*270,
                      child: texto2(scaleHeigth),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                  ),

                ),
                  ]



                ),
                
                
                Row(

                  children: <Widget>[
                    
                    
                    VerticalDivider(width: scaleWidth*240,),
                   
                       
                          Divider(height: scaleHeigth*10,),
                          ElevatedButton(
                            onPressed: ()=>Navigator.pushNamed(context, "QueEsUnaCurva"),
                            child: Icon(Icons.arrow_back_ios),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                          ),
                          VerticalDivider(width: scaleWidth*5,),
                              ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "CalculoCurvas"),
                              child: Icon(Icons.arrow_forward_ios),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                            ),
                        
                    
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
      'En los modernos mapas topográficos es muy frecuente su utilización, ya que proporcionan información cuantitativa sobre el relieve..',
     
      style: TextStyle(
          fontSize: (22*scale)
      ),
    );
  }

  Text texto2(double scale){
    return Text(
      'Las curvas de nivel nos ayudan a representar la función al dibujarlas solo en el espacio de entrada bidimensional.',
     
      style: TextStyle(
          fontSize: (22*scale)
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