import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
int puntaje=1;
String resultado="";
//pregunta 1

String R1='';
String RP1='C';

//pregunta 2

String R2='';
String RP2='B';

//pregunta 3

String R3='';
String RP3='D';

//pregunta 4

String R4='';
String RP4='A';

//pregunta 5

String R5='';
String RP5='D';

//pregunta 6

String R6='';
String RP6='A';

BoxDecoration container=BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFDCD6D6),);

TextStyle letraP=TextStyle();

class desafioEdo extends StatefulWidget{
  @override
  State<desafioEdo> createState() => _desafioEdoState();
}

class _desafioEdoState extends State<desafioEdo> {
  final letra=TextStyle(fontSize: 26,);

  final letra2=TextStyle(fontSize: 22,);

  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final widthBase=411.42857142857144;
    final heigthBase=797.7142857142857;
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    final scaleWidth=screenWidth/widthBase;
    final scaleHeigth=screenHeigth/heigthBase;
    letraP=TextStyle(fontSize: 22*scaleHeigth);
    return Scaffold(
      body: Form(
        key: formKey,
        child:Container(
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
                        onPressed:()=>Navigator.pushNamed(context, "Edo"),
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
                Divider(height: 50,),
                pregunta1(context),
                Divider(height: 20,),
                pregunta2(context),
                Divider(height: 20,),
                pregunta3(context),
                Divider(height: 20,),
                pregunta4(context),
                Divider(height: 20,),
                pregunta5(context),
                Divider(height: 20,),
                pregunta6(context),
                Divider(height: 20,),
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
                    final isValid=formKey.currentState!.validate();
                    if (isValid){
                      puntaje=1;
                      print("$R1 $RP1\n$R2 $RP2"
                          "\n$R3 $RP3\n$R4 $RP4");
                      if(R1.toUpperCase()==RP1) {puntaje += 1;};
                      if(R2.toUpperCase()==RP2) {puntaje += 1;};
                      if(R3.toUpperCase()==RP3) {puntaje += 1;};
                      if(R4.toUpperCase()==RP4) {puntaje += 1;};
                      if(R5.toUpperCase()==RP5) {puntaje += 1;};
                      if(R6.toUpperCase()==RP6) {puntaje += 1;};
                      if(puntaje>4){resultado="Aprobado";}else{resultado="Reprobado";}
                      _resultado(context);
                    }
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pregunta1(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/4-20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("1.  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio1 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
          
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo1.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("b)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo2.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("c).  ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio1.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo3.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/11,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R1=(value)),
          ),
        )
      ],
    );
  }

  Widget pregunta2(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3-30,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("2.  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio2 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          )  
         
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo4.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("b) ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio2.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("c)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo5.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo6.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/11,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R2=(value)),
          ),
        )
      ],
    );
  }

  Widget pregunta3(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/5+50,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("3)  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio3 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo7.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("b)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo8.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("c)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo9.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio3.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/11,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R3=(value)),
          ),
        )
      ],
    );
  }

  Widget pregunta4(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3-30,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("4)  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio4 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio4.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("b)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo10.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("c)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo11.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo12.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/11,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R4=(value)),
          ),
        )
      ],
    );
  }

  Widget pregunta5(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/4+50,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:  Row(
            children: [

              Text("5)  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio5 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo13.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("b)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo14.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("c)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo15.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio5.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/11,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R5=(value)),
          ),
        )
      ],
    );
  }

  Widget pregunta6(BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3+20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("6)  ",style: letraP,),
              Image(image: AssetImage('assets/Ejercicio6 desafioL.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("a)  ",style: letraP,),
              Image(image: AssetImage('assets/Solucion_Ejercicio5.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("b)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo16.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child:Row(
            children: [

              Text("c)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo17.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Row(
            children: [

              Text("d)  ",style: letraP,),
              Image(image: AssetImage('assets/chamullo18.png'),width: MediaQuery.of(context).size.width/2,)
            ]
            

          ) 
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: TextFormField(
            inputFormatters: <TextInputFormatter>[LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                hintText: "Ingrese la alternativa"
            ),
            onChanged: (value)=>setState(()=>R6=(value)),
          ),
        )
      ],
    );
  }

  void _resultado(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xFF38B000),
          content: Container(
            height: MediaQuery.of(context).size.height*2/3-50,
            child: SingleChildScrollView(
              child:Column(
                    children: [
                      Container(
                        decoration: container,
                        height: MediaQuery.of(context).size.height/10,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Center(child:Text("Resultados",style: TextStyle(fontSize: 26),)),
                      ),
                      Divider(),
                      Container(
                        decoration: container,
                        height: MediaQuery.of(context).size.height/10,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Center(child:Text("Puntaje: ${puntaje-1}/6 Nota: $puntaje",style: TextStyle(fontSize: 20),)),
                      ),
                      Divider(),
                      Container(
                        decoration: container,
                        height: MediaQuery.of(context).size.height/10,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Center(child:Text("Respuestas",style: TextStyle(fontSize: 26),)),
                      ),
                      Divider(),
                      Container(
                        decoration: container,
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Center(child:
                            Text("1. C\n"
                                 "2.  B\n"
                                 "3.  D\n"
                                 "4.  A\n"
                                 "5.  D\n"
                                 "6.  A",style: TextStyle(fontSize: 20)),
                        ),
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