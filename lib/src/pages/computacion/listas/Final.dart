import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Random random=Random();
int puntaje=1;
String resultado="";
//pregunta 1
double posP1=random.nextInt(8)+1;

double respuestaP1=posP1*4;
String R1='';
String RP1='A';
double P1A=respuestaP1;

double P1B=(respuestaP1/(random.nextInt(5)+2));
double P1C= respuestaP1 * (random.nextInt(5)+1)+1;
double P1D=respuestaP1 +random.nextInt(100);
//pregunta 2
double velocidadP2=343.2;
int tiempoP2=random.nextInt(50);
double respuestaP2=velocidadP2*tiempoP2/1000;
String R2='';
String RP2='B';
double P2A=respuestaP2 * (random.nextInt(5)+1)+1;
double P2B=respuestaP2;

double P2C=(respuestaP2/(random.nextInt(5)+2));
double P2D=respuestaP2 +random.nextInt(100);
//pregunta 3
int aceleracionP3=random.nextInt(200);
int tiempoP3=random.nextInt(50);
int respuestaP3=aceleracionP3*tiempoP3;
String R3='';
String RP3='D';
int P3A=respuestaP3 * (random.nextInt(5)+1)+1;
int P3B=respuestaP3 +random.nextInt(100);
double P3C=(respuestaP3-(random.nextInt(20)+2));
int P3D=respuestaP3;
//pregunta 4
int velocidadP4=random.nextInt(1000);
int tiempoP4=random.nextInt(50);
int velocidadP4F=random.nextInt(80);
double respuestaP4=(velocidadP4F-velocidadP4)/tiempoP4;
String R4='';
String RP4='A';
double P4A=respuestaP4;
double P4B=respuestaP4 +random.nextInt(100);
double P4C=(respuestaP4/(random.nextInt(5)+2));
double P4D=respuestaP4 * (random.nextInt(5)+1)+1;
//pregunta 5
int aceleracionP5=random.nextInt(200);
int tiempoP5=random.nextInt(50);
double respuestaP5=1/2*aceleracionP5*pow(tiempoP5, 2);
String R5='';
String RP5='C';
double P5A=respuestaP5 * (random.nextInt(5)+1)+1;
double P5B=respuestaP5 +random.nextInt(100);
double P5C=respuestaP5;

double P5D=(respuestaP5/(random.nextInt(20)+2));
//pregunta 6
int velocidadP6=random.nextInt(1000);
int tiempoP6=random.nextInt(50);
int velocidadP6F=random.nextInt(80);
double aceleracionP6=(velocidadP6F-velocidadP6)/tiempoP6;
double respuestaP6=velocidadP6*tiempoP6+1/2*aceleracionP6*pow(tiempoP6, 2);
String R6='';
String RP6='B';
double P6A=respuestaP6 +random.nextInt(100);
double P6B=respuestaP6;
double P6C=(respuestaP6/(random.nextInt(5)+2));
double P6D=respuestaP6 * (random.nextInt(5)+1)+1;

BoxDecoration container=BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFDCD6D6),);

TextStyle letraP=TextStyle();

class DesafioFinalL extends StatefulWidget{
  @override
  State<DesafioFinalL> createState() => _DesafioFinalLState();
}

class _DesafioFinalLState extends State<DesafioFinalL> {
  final letra=TextStyle(fontSize: 26,);

  final letra2=TextStyle(fontSize: 22,);
  final letraV = TextStyle(fontSize: 14);

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
                        onPressed:()=>Navigator.pushNamed(context, "Listas"),
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
          height: MediaQuery.of(context).size.height/8,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("1.¿Cómo se declara un Nodo?."
            ,style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) class Nodo:\n"
    "def nodo(self, data)\n:"
    "self.item = data\n"
    "self.nref = None\n"
    "self.pref = None\n"

    "class ListaDoble:\n"
    "def ListaDoble(self):\n"
    "self.start_node = None  ",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) class Nodo:\n"
          "self.item = data\n"


              "class ListaDoble:\n"
              "def ListaDoble(self):\n"
              "self.start_node = None  ",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) class Nodo:\n"
              "def nodo(self, data)\n:"
              "self.item = data\n"



              "class ListaDoble:\n"
              "def ListaDoble(self):\n"
              "self.start_node = None  ",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) class Nodo:\n"
              "def nodo(self, data)\n:"
              "self.item = data\n"
              "self.nref = data\n"
              "self.pref = data\n"

              "class ListaDoble:\n"
              "def ListaDoble(self):\n"
              "self.start_node = None  ",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
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
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("2. Cuál sería una desventaja de la "
              "lista doble?\n "
              ,style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) usa menos espacio de memoria.",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) usa mas espacio de memoria.",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) es mas rápida.",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) todas las anteriores.",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
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
          height: MediaQuery.of(context).size.height/6+3,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("3. ¿Cómo eliminar "
              "el primer elemento de la lista? ",style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) if self.new_node is Nodo:\n"
              "print('N/E')\n"
              "return\n"
              "else:\n"
              "n = safe.new_node\n"
              "while n is not None:\n"
              "print(n.item , " ")\n"
              "n = n.sref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) if self.start_node is None:\n"
              "print('N/E')\n"
              "return\n"
              "else:\n"
              "n = safe.start_node\n"
              "while n is not Nodo:\n"
              "print(n.item , " ")\n"
              "n = n.pref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) if self.start_node is None:\n"
              "print('N/E')\n"
              "return\n"
              "else:\n"
              "n = self.start_node\n"
              "while n is not None:\n"
              "print(n.item , " ")\n"
              "n = n.nref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) if self.start_node is None:\n"
            "          print(N/E)\n"
        "         return\n "
        "    if self.start_node.nref is None:\n"
        "       self.start_node = None\n"
        "      return\n"
        " self.start_node = self.start_node.nref\n"
            "self.start_prev = None;",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
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
          height: MediaQuery.of(context).size.height/5-50,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("4. ¿Cómo recorrer una lista doble? ",style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) if self.start_node is None:\n"
    "print('N/E')\n"
    "return\n"
    "else:\n"
    "n = self.start_node\n"
    "while n is not None:\n"
    "print(n.item , " ")\n"
    "n = n.nref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) if self.start_node is None:\n"
              "print('N/E')\n"
              "while n is not None:\n"
              "print(n.item , " ")\n"
              "n = n.nref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) if self.new_node is None:\n"
              "print('N/E')\n"
              "while n is not Nodo:\n"
              "print(n.item , " ")\n"
              "n = n.pref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) if self.start_node is Nodo:\n"
              "print('N/E')\n"
              "while n is not None:\n"
              "print(n.item , " ")\n"
              "n = n.sref",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+5,
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
          height: MediaQuery.of(context).size.height/6+4,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("5. ¿Cómo puedo insertar un elemento a mi lista?\n"
              "doble?",style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/3+4,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) if self.start_node is None:\n"
              "start_node = Nodo(data)\n"
              "n = self.start_node\n"
              "while n.pref is not None:\n"
              "n = n.pref\n"
              "start_node = Nodo(data)\n"
              "n.nref = new_node\n"
              "new_node.pref = n\n",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/3+4,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) if self.start_node is None:\n"
    "new_node = Nodo(data)\n"
    "self.new_node = start_node\n"
    "return\n"
    "n = self.start_node\n"
    "while n.nref is not None:\n"
    "n = n.nref\n"
    "new_node = Nodo(data)\n"
    "n.nref = new_node\n"
    "new_node.pref = n\n",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/3+4,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) if self.start_node is None:\n"
    "new_node = Nodo(data)\n"
    "self.start_node = new_node\n"
    "else:\n"
    "print('Lista tiene objetos')  ",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/3+4,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) if self.start_node is None:\n"
    "new_node = Nodo(data)\n"
    "self.start_node = new_node\n"
    "return\n"
    "n = self.start_node\n"
    "while n.nref is not None:\n"
    "n = n.nref\n"
    "new_node = Nodo(data)\n"
    "n.nref = new_node\n"
    "new_node.pref = n\n" ,style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/8+4,
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
          height: MediaQuery.of(context).size.height/6+20,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("6. ¿Cómo puedo insertar en la primera posición mi "
              "elemento?\n"
            ,style: letraP,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("a) if self.start_node is None:\n"
              "new_node = Nodo(data)\n"
              "self.start_node = new_node\n"
              "new_node = start_node\n"
              "new_node.pref = self.start_node\n"
              "self.start_node.pref = new_node\n"
              "self.start_node = new_node\n"
            ,style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("b) if self.start_node is None:\n"
    "new_node = Nodo(data)\n"
    "self.start_node = new_node\n"
    "print('nodo insertado')\n"
    "return\n"
    "new_node = Nodo(data)\n"
    "new_node.nref = self.start_node\n"
    "self.start_node.pref = new_node\n"
    "self.start_node = new_node\n",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("c) if self.start_node is None:\n"
              "start_node = Nodo(data)\n"
              "self.new_node = new_node\n"
              "print('nodo insertado')\n"
              "return\n"
              "new_node = start_node\n"
              "new_node.nref = self.start_node\n"
              "self.start_node.pref = new_node\n"
              "self.start_node = new_node\n",style: letraV,),
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height/4+5,
          width: MediaQuery.of(context).size.width-50,
          padding: EdgeInsets.symmetric(horizontal: 45,vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFDCD6D6),
          ),
          child: Text("d) if self.start_node is None:\n"
              "start_node = Nodo(data)\n"
              "self.new_node = new_node\n"
              "print('nodo insertado')\n"
              "return\n"
              "new_node = start_node\n"
              "new_node.nref = self.start_node\n"
              "self.start_node.pref = new_node\n"
              "self.start_node = new_node\n",style: letraV,),
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
                    Text("1. A\n"
                        "2. B\n"
                        "3. D\n"
                        "4. A\n"
                        "5. C\n"
                        "6. B\n",style: TextStyle(fontSize: 20)),
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