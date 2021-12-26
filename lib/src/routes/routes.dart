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
import 'package:pca/src/pages/quimica/Configuracion/desafios_co.dart';
import 'package:pca/src/pages/quimica/Configuracion/diagrama_moller.dart';
import 'package:pca/src/pages/quimica/Configuracion/ejercicios_co.dart';
import 'package:pca/src/pages/quimica/Configuracion/estructura_atomo.dart';
import 'package:pca/src/pages/quimica/Configuracion/intro_configuracion.dart';
import 'package:pca/src/pages/quimica/Configuracion/notacion_cuantica.dart';
import 'package:pca/src/pages/quimica/Enlace/covalente.dart';
import 'package:pca/src/pages/quimica/Enlace/desafios.dart';
import 'package:pca/src/pages/quimica/Enlace/ejercicios_en.dart';
import 'package:pca/src/pages/quimica/Enlace/intro_enlace.dart';
import 'package:pca/src/pages/quimica/Enlace/ionico.dart';
import 'package:pca/src/pages/quimica/Enlace/metalico.dart';
import 'package:pca/src/pages/quimica/Estructura/desafio_es.dart';
import 'package:pca/src/pages/quimica/Estructura/ejercicios_es.dart';
import 'package:pca/src/pages/quimica/Estructura/geometria_molecular.dart';
import 'package:pca/src/pages/quimica/Estructura/intro_estructura.dart';
import 'package:pca/src/pages/quimica/Estructura/lewis.dart';
import 'package:pca/src/pages/quimica/Estructura/tabla_molecular.dart';
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

    //Estructura Molecular
    'IntroEstructura':(BuildContext context)=>IntroEstructura(),
    'DiagramaLewis':(BuildContext context)=>DiagramaLewis(),
    'TablaMolecular':(BuildContext context)=>TablaMolecular(),
    'GeometriaMolecular':(BuildContext context)=>GeometriaMolecular(),
    'ejercicios_es':(BuildContext context)=>ejercicios_es(),
    'desafios_es':(BuildContext context)=>desafios_es(),

    //Configuracion Electronica
    'IntroConfiguracion':(BuildContext context)=>IntroConfiguracion(),
    'EstructuraAtomo':(BuildContext context)=>EstructuraAtomo(),
    'DiagramaMoller':(BuildContext context)=>DiagramaMoller(),
    'NotacionCuantica':(BuildContext context)=>NotacionCuantica(),
    'ejercicios_co':(BuildContext context)=>ejercicios_co(),
    'desafios_co':(BuildContext context)=>desafios_co(),


    //Enlaces Quimicos
    'introEnlace':(BuildContext context)=>IntroEnlace(),
    'Covalente':(BuildContext context)=>covalente(),
    'Ionico':(BuildContext context)=>ionico(),
    'Metalico':(BuildContext context)=>metalico(),
    'Ejercicios_en':(BuildContext context)=>ejercicios_en(),
    'desafios_en':(BuildContext context)=>desafios_en(),
  };
}