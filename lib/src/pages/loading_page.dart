import 'package:flutter/material.dart';


class LoadingPage extends StatelessWidget {

  final letra=TextStyle(
    fontSize: 50,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
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
