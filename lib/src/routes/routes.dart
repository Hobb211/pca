import 'package:flutter/material.dart';

import 'package:pca/src/pages/computacion_page.dart';
import 'package:pca/src/pages/fisica/caida_menu.dart';
import 'package:pca/src/pages/fisica/mru_menu.dart';
import 'package:pca/src/pages/fisica/proyectil_menu.dart';
import 'package:pca/src/pages/fisica_Page.dart';
import 'package:pca/src/pages/home_page.dart';
import 'package:pca/src/pages/loading_page.dart';
import 'package:pca/src/pages/matematicas_page.dart';
import 'package:pca/src/pages/quimica/configuracionE_menu.dart';
import 'package:pca/src/pages/quimica/enlaceQ_menu.dart';
import 'package:pca/src/pages/quimica/estructuraM_menu.dart';
import 'package:pca/src/pages/quimica_page.dart';


Map<String,WidgetBuilder> getAplicationRoutes(){
  return <String,WidgetBuilder>{
    '/':(BuildContext context)=>LoadingPage(),
    'Home':(BuildContext context)=>HomePage(),
    'Fisica':(BuildContext context)=>FisicaPage(),
    'Matematicas':(BuildContext context)=>MatematicasPage(),
    'Quimica':(BuildContext context)=>QuimicaPage(),
    'Computacion':(BuildContext context)=>ComputacionPage(),
    'MRU':(BuildContext context)=>MRUmenu(),
    'Proyectil':(BuildContext context)=>ProyectilMenu(),
    'Caida':(BuildContext context)=>CaidaMenu(),
    'EnlaceQ':(BuildContext context)=>EnlaceQMenu(),
    'EstructuraM':(BuildContext context)=>EstructuraMMenu(),
    'ConfiguracionE':(BuildContext context)=>ConfiguracionEMenu(),

  };
}