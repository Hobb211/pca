import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
int puntaje=1;
String resultado="";
//pregunta 1
int alturaP1=random.nextInt(490)+10;
int velocidadP1=random.nextInt(50)+1;
int anguloP1=random.nextInt(90)+1;
double velocidady=velocidadP1*sin(anguloP1*pi/180);
double tiempoP1max=velocidady/9.8;
double respuestaP1=alturaP1+velocidady*tiempoP1max-1/2*9.8*pow(tiempoP1max,2);
String R1='';
String RP1='C';
double P1A=respuestaP1 * (random.nextInt(5)+1)+1;
double P1B=(respuestaP1/(random.nextInt(5)+2));
double P1C=respuestaP1;
double P1D=respuestaP1 +random.nextInt(100);
//pregunta 2
int velocidadP2=random.nextInt(50)+1;
int anguloP2=random.nextInt(90)+1;
double tiempoP2=random.nextInt(30)+1;
double velocidadP2x=velocidadP2*cos(anguloP2*pi/180);
double respuestaP2=velocidadP2x*tiempoP2;
String R2='';
String RP2='B';
double P2A=respuestaP2 * (random.nextInt(5)+1)+1;
double P2B=respuestaP2;
double P2C=(respuestaP2/(random.nextInt(5)+2));
double P2D=respuestaP2 +random.nextInt(100);
//pregunta 3
int velocidadP3=random.nextInt(200);
int anguloP3=random.nextInt(90)+1;
double respuestaP3=2*velocidadP3*sin(anguloP3*pi/180)/9.8;
String R3='';
String RP3='D';
double P3A=respuestaP3 * (random.nextInt(5)+1)+1;
double P3B=respuestaP3 +random.nextInt(100);
double P3C=(respuestaP3/(random.nextInt(5)+2));
double P3D=respuestaP3;
//pregunta 4
int velocidadP4=random.nextInt(1000);
int anguloP4=random.nextInt(90)+1;
double respuestaP4=velocidadP4*cos(anguloP4*pi/180);
String R4='';
String RP4='A';
double P4A=respuestaP4;
double P4B=respuestaP4 +random.nextInt(100);
double P4C=(respuestaP4/(random.nextInt(5)+2));
double P4D=respuestaP4 * (random.nextInt(5)+1)+1;
//pregunta 5
int velocidadP5=random.nextInt(200);
int anguloP5=random.nextInt(90)+1;
double respuestaP5=velocidadP5*sin(anguloP5*pi/180);
String R5='';
String RP5='D';
double P5A=respuestaP5 * (random.nextInt(5)+1)+1;
double P5B=respuestaP5 +random.nextInt(100);
double P5C=(respuestaP5/(random.nextInt(20)+2));
double P5D=respuestaP5;
//pregunta 6
int velocidadP6=random.nextInt(1000);
int anguloP6=random.nextInt(90)+1;
double tiempoP6=2*velocidadP6*sin(anguloP6*pi/180)/9.8;
double respuestaP6=velocidadP6*sin(anguloP6*pi/180)*tiempoP6/2-1/2*9.8*pow(tiempoP6/2, 2);
String R6='';
String RP6='A';
double P6A=respuestaP6;
double P6B=respuestaP6 +random.nextInt(100);
double P6C=(respuestaP6/(random.nextInt(5)+2));
double P6D=respuestaP6 * (random.nextInt(5)+1)+1;

BoxDecoration container=BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFDCD6D6),);

TextStyle letraP=TextStyle();

class desafioProyectil extends StatefulWidget{
  @override
  State<desafioProyectil> createState() => _desafioProyectilState();
}

class _desafioProyectilState extends State<desafioProyectil> {
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
                        onPressed:()=>Navigator.pushNamed(context, "Proyectil"),
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
          height: MediaQuery.of(context).size.height/3-60,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("1.Se lanza una pelota desde un techo a ${alturaP1}m de altura"
              ", con una V0 de ${velocidadP1}m/s y un ángulo de ${anguloP1}°"
              " ¿Cual es su altura máxima?",style: letraP,),
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
          child: Text("a) ${P1A.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("b) ${P1B.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("c) ${P1C.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("d) ${P1D.toStringAsPrecision(5)} m",style: letraP,),
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
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("2.Se lanza una pelota desde un techo con una V0 de"
              " ${velocidadP2}m/s, un ángulo de ${anguloP2}° y toca el "
              "suelo luego de $tiempoP2 sg"
              " ¿Cual es la distancia recorrida desde el cañon hasta que el proyectil "
              "toca el suelo?",style: letraP,),
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
          child: Text("a) ${P2A.toStringAsPrecision(4)} m",style: letraP,),
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
          child: Text("b) ${P2B.toStringAsPrecision(4)} m",style: letraP,),
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
          child: Text("c) ${P2C.toStringAsPrecision(4)} m",style: letraP,),
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
          child: Text("d) ${P2D.toStringAsPrecision(4)} m",style: letraP,),
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
          child: Text("3. Se dispara un proyectil con una velocidad de $velocidadP3 m/sg"
              " y un angulo de ${anguloP3}° ¿Cuanto tiempo se mantiene el proyectil en el aire? "
            ,style: letraP,),
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
          child: Text("a) ${P3A.toStringAsPrecision(4)} sg",style: letraP,),
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
          child: Text("b) ${P3B.toStringAsPrecision(4)} sg",style: letraP,),
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
          child: Text("c) ${P3C.toStringAsPrecision(4)} sg",style: letraP,),
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
          child: Text("d) ${P3D.toStringAsPrecision(4)} sg",style: letraP,),
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
          height: MediaQuery.of(context).size.height/4-20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("4. Se dispara un proyectil con una velocidad de $velocidadP4 m/sg"
              " y un angulo de ${anguloP4}° ¿Cual es la velocidad en el eje x? ",style: letraP,),
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
          child: Text("a) ${P4A.toStringAsPrecision(4)} m/sg",style: letraP,),
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
          child: Text("b) ${P4B.toStringAsPrecision(4)} m/sg",style: letraP,),
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
          child: Text("c) ${P4C.toStringAsPrecision(4)} m/sg",style: letraP,),
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
          child: Text("d) ${P4D.toStringAsPrecision(4)} m/sg",style: letraP,),
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
          height: MediaQuery.of(context).size.height/5+20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("5. Se dispara un proyectil con una velocidad de $velocidadP5 m/sg"
              " y un angulo de ${anguloP5}° ¿Cual es la velocidad en el eje y?",style: letraP,),
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
          child: Text("a) ${P5A.toStringAsPrecision(6)} m/sg",style: letraP,),
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
          child: Text("b) ${P5B.toStringAsPrecision(6)} m/sg",style: letraP,),
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
          child: Text("c) ${P5C.toStringAsPrecision(6)} m/sg",style: letraP,),
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
          child: Text("d) ${P5D.toStringAsPrecision(6)} m/sg",style: letraP,),
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
          height: MediaQuery.of(context).size.height/5+20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("6. Se dispara un proyectil con una velocidad de $velocidadP6 m/sg"
              " y un angulo de ${anguloP6}° ¿Cual es la altura maxima?",style: letraP,),
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
          child: Text("a) ${P6A.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("b) ${P6B.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("c) ${P6C.toStringAsPrecision(5)} m",style: letraP,),
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
          child: Text("d) ${P6D.toStringAsPrecision(5)} m",style: letraP,),
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
                    Text("1. ${respuestaP1.toStringAsPrecision(5)} m\n"
                        "2. ${respuestaP2.toStringAsPrecision(5)} m\n"
                        "3. ${respuestaP3.toStringAsPrecision(5)} sg\n"
                        "4. ${respuestaP4.toStringAsPrecision(5)} m/sg\n"
                        "5. ${respuestaP5.toStringAsPrecision(5)} m/sg\n"
                        "6. ${respuestaP6.toStringAsPrecision(5)} sg",style: TextStyle(fontSize: 20)),
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