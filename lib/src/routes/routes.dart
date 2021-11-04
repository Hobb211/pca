import 'package:flutter/material.dart';
import 'package:pca/src/pages/fisica_Page.dart';

import 'package:pca/src/pages/home_page.dart';
import 'package:pca/src/pages/loading_page.dart';


Map<String,WidgetBuilder> getAplicationRoutes(){
  return <String,WidgetBuilder>{
    '/':(BuildContext context)=>LoadingPage(),
    'Home':(BuildContext context)=>HomePage(),
    'Fisica':(BuildContext context)=>FisicaPage(),
  };
}