import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math'as math;
import 'dart:io';

double angulo=0;
double velocidad=0;
int posicionI=0;
double posicion=0;
int tiempo=0;
int tiempo2=0;
double alturaMax=0;


class SimuladorProyectil extends StatefulWidget{
  @override
  State<SimuladorProyectil> createState() => _SimuladorProyectilState();
}

class _SimuladorProyectilState extends State<SimuladorProyectil> {
  final boton=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF2B2927)),
      elevation: MaterialStateProperty.all(0)
  );

  final boton2=ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFDCD6D6)),
      elevation: MaterialStateProperty.all(0)
  );

  final containers= BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFFDCD6D6),
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
    final letra=TextStyle(fontSize: 26*scaleWidth,);
    final letra2=TextStyle(fontSize: 16*scaleWidth,);


    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.gif"),
              fit: BoxFit.cover,
            ),
          ),
          child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Divider(height: 60*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                          style: boton,
                          onPressed:()=>Navigator.pushNamed(context, "Proyectil"),
                          child: Image(image: AssetImage("assets/arrow.png"),height: 50*scaleHeigth,)
                      ),
                      Container(
                        width: 250*scaleWidth,
                        child: Text("Simulador",style: letra,),
                        padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                        decoration: containers,
                      )
                    ],
                  ),
                  Divider(height: 20*scaleHeigth,),
                  Container(
                    width: 250*scaleWidth,
                    child: Text("X0= $posicionI m\nV0= $velocidad m/sg\na°= $angulo",style: letra2,),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    decoration: containers,
                  ),
                  Divider(height: 15*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      VerticalDivider(width:20*scaleWidth ,),
                      Column(
                        children: [
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputAngulo()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputPosicion()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputVelocidad()),
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          ),
                        ],
                      ),
                      VerticalDivider(width:50*scaleWidth ),
                      Column(
                          children: <Widget>[
                            InkWell(
                              child:Container(
                                decoration: containers,
                                height: 50,
                                width: 150,
                                child: Text("Disparar"),
                                padding: EdgeInsets.symmetric(vertical:15,horizontal: 40),
                              ),
                              onTap: (){
                                final isValid=formKey.currentState!.validate();
                                if (isValid){
                                  setTime();
                                  _simulador(scaleHeigth);
                                }
                              },
                            ),
                            Divider(height: 10*scaleHeigth,),
                            Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "IntroProyectil"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10*scaleWidth,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "FormulasProyectil"),
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
      )
    );
  }

  Widget inputAngulo(){
    return TextFormField(
      keyboardType: TextInputType.number,
      validator: (value) {
        if ( double.parse(value!) <= 90){
          return null;
        }
        return 'Ángulo invalido';
      },
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(2)],
      decoration: InputDecoration(
        icon: Icon(Icons.airline_seat_flat_angled_outlined),
        hintText: "Ángulo"
      ),
      onChanged: (value)=>setState(()=>angulo=(double.parse(value))),
    );
  }

  Widget inputPosicion(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      decoration: InputDecoration(
          icon: Image(image: AssetImage("assets/x.png"),height: 13,),
          hintText: "Posición"
      ),
      onChanged: (value)=>setState(()=>posicionI=(int.parse(value))),
    );
  }

  Widget inputVelocidad(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      validator: (value) {
        if ( double.parse(value!) <= 37 && double.parse(value!)>=20){
          return null;
        }
        return '20<=V<=37';
      },
      decoration: InputDecoration(
          icon: Image(image: AssetImage("assets/v.png"),height: 13,),
          hintText: "Velocidad"
      ),
      onChanged: (value)=>setState(()=>velocidad=(double.parse(value))),
    );
  }

  void setTime(){
    tiempo=-(2*velocidad*math.sin(-(angulo*math.pi/180))/9.8).round();
    tiempo2=(tiempo/2).toInt();
  }

  void _simulador(double scaleHeigth){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Color(0xFF38B000),
            content: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 160*scaleHeigth,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDCD6D6),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Text("X(t)=X0+V0cos(a°)*t\n"
                          "Y(t)=Y0+V0sen(a°)*t+1/2*gt^2\n"
                    "X($tiempo)= ${posicion.toStringAsPrecision(4)} m  \nYmax=${alturaMax.toStringAsPrecision(4)} m  \nt= $tiempo sg  \na°= $angulo°  "),
                    ),
                    Divider(height: 20*scaleHeigth,),
                    Container(
                      height: 200*scaleHeigth,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/granja.jpg")),
                      ),
                      child:  Center(child:Stack(children: [
                        canonAnimado(),
                        balaAnimada()
                      ]
                      )
                      )
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

}


class canonAnimado extends StatefulWidget {
  @override
  State<canonAnimado> createState() => _canonAnimadoState();
}

class _canonAnimadoState extends State<canonAnimado> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotacion;
  late Animation<double> time;

  @override
  void initState() {
    controller= new AnimationController(
      vsync: this,
      duration: Duration(seconds:0)
    );

    rotacion=Tween(begin: 0.0,end: -(angulo*math.pi/180)).animate(controller);

    controller.addListener(() {
      setState(() {});
      // if(controller.status==AnimationStatus.completed){
      //   controller.reset();
      // }

    });

    super.initState();

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (context,child){
          return Transform.translate(
            offset: Offset(-115,80),
            child: Transform.rotate(
              angle: rotacion.value,
              child:_canon()
            ),
          );
        }
    );
  }



}

class _canon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(40))
      ),
    );
  }
}

class balaAnimada extends StatefulWidget {

  @override
  _balaAnimadaState createState() => _balaAnimadaState();
}

class _balaAnimadaState extends State<balaAnimada> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> rotacion;
  late Animation<double> time;
  late Animation<double> horizontal;
  late Animation<double> vertical;
  late Animation<double> vertical2;

  @override
  void initState() {
    controller= AnimationController(
        vsync: this,
        duration: Duration(seconds: tiempo)
    );

    rotacion=Tween(begin: 0.0,end: tiempo.toDouble()).animate(controller);
    horizontal=Tween(begin:-100.0,end:40.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.1,1)));
    vertical=Tween(begin:80.0,end:-80.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0.1,0.5,curve: Curves.easeOutCirc))
    );
    vertical2=Tween(begin:0.0,end:160.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.5,1,curve: Curves.easeInCirc))
    );

    controller.addListener(() {
      setState(() {});
      posicion=(posicionI-velocidad*math.sin(-(angulo*math.pi/180))*tiempo);
      alturaMax=-velocidad*math.sin(-(angulo*math.pi/180))*tiempo2;

    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (context,child){
          return Transform.translate(
              offset: Offset(horizontal.value,vertical.value),
              child: Transform.translate(
                offset: Offset(0,vertical2.value),
                child:Transform.rotate(
                    angle: rotacion.value,
                    child: _bala()
              ),
            ),
          );
        }
    );
  }
}



class _bala extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}