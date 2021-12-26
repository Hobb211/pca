import 'package:flutter/material.dart';
import 'package:pca/src/pages/computacion/compuertas_menu.dart';
import 'package:pca/src/pages/computacion/listas_menu.dart';
import 'package:pca/src/pages/computacion/matrices_menu.dart';

import 'package:pca/src/pages/computacion_page.dart';
import 'package:pca/src/pages/fisica/caida%20libre/desafio.dart';
import 'package:pca/src/pages/fisica/caida%20libre/ejercicios.dart';
import 'package:pca/src/pages/fisica/caida%20libre/formulas.dart';
import 'package:pca/src/pages/fisica/caida%20libre/intro_caida.dart';
import 'package:pca/src/pages/fisica/caida%20libre/simulador.dart';
import 'package:pca/src/pages/fisica/caida_menu.dart';
import 'package:pca/src/pages/fisica/lanzamiento%20de%20proyectil/desafio.dart';
import 'package:pca/src/pages/fisica/lanzamiento%20de%20proyectil/ejercicios.dart';
import 'package:pca/src/pages/fisica/lanzamiento%20de%20proyectil/formulas.dart';
import 'package:pca/src/pages/fisica/lanzamiento%20de%20proyectil/intro_proyectil.dart';
import 'package:pca/src/pages/fisica/lanzamiento%20de%20proyectil/simulador.dart';
import 'package:pca/src/pages/fisica/mru/desafio.dart';
import 'package:pca/src/pages/fisica/mru/ejercicios.dart';
import 'package:pca/src/pages/fisica/mru/intro_mru.dart';
import 'package:pca/src/pages/fisica/mru/mru.dart';
import 'package:pca/src/pages/fisica/mru/mrua.dart';
import 'package:pca/src/pages/fisica/mru/simulador.dart';
import 'package:pca/src/pages/fisica/mru_menu.dart';
import 'package:pca/src/pages/fisica/proyectil_menu.dart';
import 'package:pca/src/pages/fisica_Page.dart';
import 'package:pca/src/pages/home_page.dart';
import 'package:pca/src/pages/loading_page.dart';
import 'package:pca/src/pages/matematicas/curvas_menu.dart';
import 'package:pca/src/pages/matematicas/edo_menu.dart';
import 'package:pca/src/pages/matematicas/limites_menu.dart';
import 'package:pca/src/pages/matematicas_page.dart';
import 'package:pca/src/pages/quimica/configuracionE_menu.dart';
import 'package:pca/src/pages/quimica/enlaceQ_menu.dart';
import 'package:pca/src/pages/quimica/estructuraM_menu.dart';
import 'package:pca/src/pages/quimica_page.dart';


Map<String,WidgetBuilder> getAplicationRoutes(){
  return <String,WidgetBuilder>{
    //inicio
    '/':(BuildContext context)=>LoadingPage(),
    'Home':(BuildContext context)=>HomePage(),
    //menus de materias
    'Fisica':(BuildContext context)=>FisicaPage(),
    'Matematicas':(BuildContext context)=>MatematicasPage(),
    'Quimica':(BuildContext context)=>QuimicaPage(),
    'Computacion':(BuildContext context)=>ComputacionPage(),
    //unidades fisica
    'MRU':(BuildContext context)=>MRUmenu(),
    'Proyectil':(BuildContext context)=>ProyectilMenu(),
    'Caida':(BuildContext context)=>CaidaMenu(),
    //unidades quimica
    'EnlaceQ':(BuildContext context)=>EnlaceQMenu(),
    'EstructuraM':(BuildContext context)=>EstructuraMMenu(),
    'ConfiguracionE':(BuildContext context)=>ConfiguracionEMenu(),
    //unidades computacion
    'Compuertas':(BuildContext context)=>CompuertasMenu(),
    'Listas':(BuildContext context)=>ListasMenu(),
    'Matrices':(BuildContext context)=>MatricesMenu(),
    //unidades matematicas
    'Curvas':(BuildContext context)=>CurvasMenu(),
    'Edo':(BuildContext context)=>EdoMenu(),
    'Limites':(BuildContext context)=>LimitesMenu(),

    //MRU
    'IntroMRU':(BuildContext context)=>IntroMRU(),
    'MRULeccion':(BuildContext context)=>MRULeccion(),
    'MRUALeccion':(BuildContext context)=>MRUALeccion(),
    'SimuladorMru':(BuildContext context)=>SimuladorMru(),
    'EjerciciosMru':(BuildContext context)=>ejerciciosMRU(),
    'DesafioMru':(BuildContext context)=>desafioMRU(),

    //Proyectil
    'IntroProyectil':(BuildContext context)=>IntroProyectil(),
    'FormulasProyectil':(BuildContext context)=>FormulasProyectil(),
    'SimuladorProyectil':(BuildContext context)=>SimuladorProyectil(),
    'EjerciciosProyectil':(BuildContext context)=>ejerciciosProyectil(),
    'DesafioProyectil':(BuildContext context)=>desafioProyectil(),

    //Caida
    'IntroCaida':(BuildContext context)=>IntroCaida(),
    'FormulasCaida':(BuildContext context)=>FormulasCaida(),
    'SimuladorCaida':(BuildContext context)=>SimuladorCaida(),
    'EjerciciosCaida':(BuildContext context)=>ejerciciosCaida(),
    'DesafioCaida':(BuildContext context)=>desafioCaida(),
  };
}