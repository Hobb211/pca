import 'package:flutter/material.dart';

class LimiteIndeterminado extends StatelessWidget{

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
                VerticalDivider(width: scaleWidth*10,),
                //Divider(height: 3,),
                Column(
                  children: <Widget>[
                    InkWell(
                        onTap:()=>Navigator.pushNamed(context, 'Limites'),
                        child: Image(image: AssetImage("assets/arrow.png"),height: scaleHeigth*50,)
                    ),
                    VerticalDivider(width: 10,),
                    Container(
                      width: scaleWidth*250,
                      child: Text("Limites Indeterminados",style: letra,),
                      padding: EdgeInsets.symmetric(horizontal: scaleHeigth*20,vertical: scaleWidth*10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                    )
                  ],
                ),
                Divider(height: scaleHeigth*10,),
                Container(
                  width: scaleWidth*350,
                  height: scaleHeigth*220,
                  child: texto(scaleHeigth),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFDCD6D6),
                  ),
                ),
                
                Divider(height: scaleHeigth*10,),
                Container(
                  width: scaleWidth*350,
                  height: scaleHeigth*320,
                  child: texto2(scaleHeigth),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFDCD6D6),
                  ),
                ),
                Divider(height: scaleHeigth*1,),
                Row(
                  children: <Widget>[
                    
                    
                        
                        VerticalDivider(width: scaleHeigth*250,),
                          ElevatedButton(
                            onPressed: ()=>Navigator.pushNamed(context, "UsoLimite"),
                            child: Icon(Icons.arrow_back_ios),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                          ),
                         VerticalDivider(width: scaleWidth*5,),
                              ElevatedButton(
                              onPressed: ()=>Navigator.pushNamed(context, "ejemplosLimites"),
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
      "Los límites indeterminados (o indeterminaciones) no indican que el límite no exista, sino que no se puede anticipar el resultado."
       ,
      style: TextStyle(
          fontSize: (24*scale)
      ),
    );
  }
   Text texto2(double scale){
    return Text(
      "Se tendrán que hacer operaciones adicionales para eliminar la indeterminación y averiguar entonces el valor del límite (en el caso de que exista). Ese valor puede ser un número finito, incluido el cero, o +∞ o bien -∞."
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