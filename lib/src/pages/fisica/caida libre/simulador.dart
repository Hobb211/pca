import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math'as math;
import 'dart:io';


int velocidad=0;
int posicionI=0;
double posicion=0;
int tiempo=0;
TextStyle letra2=TextStyle();


class SimuladorCaida extends StatefulWidget{
  @override
  State<SimuladorCaida> createState() => _SimuladorCaidaState();
}

class _SimuladorCaidaState extends State<SimuladorCaida> {
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
    letra2=TextStyle(fontSize: 26*scaleWidth,);


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
                  Divider(height: 70*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      InkWell(
                          onTap:()=>Navigator.pushNamed(context, "Caida"),
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
                  Divider(height: 40*scaleHeigth,),
                  Container(
                    height: 100*scaleHeigth,
                    width: 280*scaleWidth,
                    child: Center(child: Text("Y0= $posicionI m",style: letra2,)),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    decoration: containers,
                  ),
                  Divider(height: 40*scaleHeigth,),
                  Row(
                    children: <Widget>[
                      VerticalDivider(width:20*scaleWidth ,),
                      Column(
                        children: [
                          Divider(height:15*scaleHeigth),
                          Container(
                            decoration: containers,
                            height: 60,
                            width: 180,
                            child: Center(child:inputPosicion()),
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
                                    onPressed: ()=>Navigator.pushNamed(context, "FormulasCaida"),
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF38B000))),
                                  ),
                                  VerticalDivider(width: 10*scaleWidth,),
                                  ElevatedButton(
                                    onPressed: ()=>Navigator.pushNamed(context, "EjerciciosCaida"),
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



  Widget inputPosicion(){
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
      decoration: InputDecoration(
          icon: Image(image: AssetImage("assets/y.png"),height: 18,),
          hintText: "Posición"
      ),
      onChanged: (value)=>setState(()=>posicionI=(int.parse(value))),
    );
  }


  void setTime(){
    tiempo=math.sqrt(posicionI*2/9.8).round();
    velocidad=(9.8*tiempo).round();
  }

  void _simulador(double scaleHeigth){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Color(0xFF38B000),
            content: SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height/2+30,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 170*scaleHeigth,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFDCD6D6),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                                "Y(t)=Y0+1/2*gt^2\n"
                                "Vmax=${velocidad} m/sg  \nt= $tiempo sg",
                              style: letra2,),
                          ),
                        ),
                        Divider(height: 20*scaleHeigth,),
                        Container(
                            height: 240,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/ciudad.jpg")),
                            ),
                            child:  Center(child:Stack(children: [
                              helicopteroAnimado(),
                              regaloAnimado()
                            ]
                            )
                            )
                        )
                      ],
                    ),
                  ),
                ),
            ),
          );
        }
    );
  }

}


class helicopteroAnimado extends StatefulWidget {
  @override
  State<helicopteroAnimado> createState() => _helicopteroAnimado();
}

class _helicopteroAnimado extends State<helicopteroAnimado> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller= new AnimationController(
        vsync: this,
        duration: Duration(seconds:0)
    );


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
            offset: Offset(0,-100),
            child: _helicoptero()
          );
        }
    );
  }



}

class _helicoptero extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/helicoptero.png"))
      ),
    );
  }
}

class regaloAnimado extends StatefulWidget {

  @override
  _RegaloAnimadaState createState() => _RegaloAnimadaState();
}

class _RegaloAnimadaState extends State<regaloAnimado> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> rotacion;
  late Animation<double> horizontal;
  late Animation<double> vertical;
  late Animation<double> vertical2;

  @override
  void initState() {
    controller= AnimationController(
        vsync: this,
        duration: Duration(seconds: tiempo)
    );

     vertical=Tween(begin:-100.0,end:95.0).animate(controller);

    controller.addListener(() {
      setState(() {});


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
            offset: Offset(10,vertical.value),
              child:_regalo()
          );
        }
    );
  }
}



class _regalo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/regalo.png"))
      ),
    );
  }
}