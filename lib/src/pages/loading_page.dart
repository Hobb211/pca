import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pca/src/pages/home_page.dart';


class LoadingPage extends StatefulWidget {
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final letra=TextStyle(
    fontSize: 50,
    color: Colors.white,
  );

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: initScreen(context)
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  initScreen(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(' Simu\nEduca\n UCN',style: letra,),
        alignment: Alignment.center,
      ),
      floatingActionButton: Container(
        width: 100,
        margin: EdgeInsets.symmetric(vertical: 15),
        child: logo(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

    );
  }

  Widget logo(){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/ucn_logo.png"),
        ),
      ),
    );
  }

}

