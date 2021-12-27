import 'package:flutter/material.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/DesafioFinalC.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Ejemplo.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/EjerciciosC.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/EjerciciosC2.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Puerta_Logica.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Tipos_Puertas.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Tipos_Puertas2.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Tipos_Puertas3.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/Tipos_Puertas4.dart';
import 'package:pca/src/pages/computacion/compuertas%20logicas/intro_compuertas.dart';
import 'package:pca/src/pages/computacion/compuertas_menu.dart';
import 'package:pca/src/pages/computacion/listas/Ejercicios.dart';
import 'package:pca/src/pages/computacion/listas/Ejercicios_2.dart';
import 'package:pca/src/pages/computacion/listas/Final.dart';
import 'package:pca/src/pages/computacion/listas/Funcion_Ldoble.dart';
import 'package:pca/src/pages/computacion/listas/Lista_Doble.dart';
import 'package:pca/src/pages/computacion/listas/Lista_Enlazada.dart';
import 'package:pca/src/pages/computacion/listas/Lista_Python.dart';
import 'package:pca/src/pages/computacion/listas/Nodo.dart';
import 'package:pca/src/pages/computacion/listas/intro_listas.dart';
import 'package:pca/src/pages/computacion/listas_menu.dart';
import 'package:pca/src/pages/computacion/matrices/Arreglos.dart';
import 'package:pca/src/pages/computacion/matrices/creando_matriz.dart';
import 'package:pca/src/pages/computacion/matrices/desafio_final.dart';
import 'package:pca/src/pages/computacion/matrices/ex1.dart';
import 'package:pca/src/pages/computacion/matrices/exe2.dart';
import 'package:pca/src/pages/computacion/matrices/intro_matrices.dart';
import 'package:pca/src/pages/computacion/matrices/matriz.dart';
import 'package:pca/src/pages/computacion/matrices/matriz_Java.dart';
import 'package:pca/src/pages/computacion/matrices/matriz_Python.dart';
import 'package:pca/src/pages/computacion/matrices/matrizpy_continue.dart';
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
import 'package:pca/src/pages/matematicas/curvas/calculo_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/desafio_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/ejemplos_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/ejercicios_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/introduccion_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/que_esunacurva.dart';
import 'package:pca/src/pages/matematicas/curvas/resueltos_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas/uso_curvas.dart';
import 'package:pca/src/pages/matematicas/curvas_menu.dart';
import 'package:pca/src/pages/matematicas/edo/desafio.dart';
import 'package:pca/src/pages/matematicas/edo/ecuacionesh.dart';
import 'package:pca/src/pages/matematicas/edo/ecuacionesl.dart';
import 'package:pca/src/pages/matematicas/edo/ejercicios_edo.dart';
import 'package:pca/src/pages/matematicas/edo/introduccion.dart';
import 'package:pca/src/pages/matematicas/edo/separacion_variables.dart';
import 'package:pca/src/pages/matematicas/edo_menu.dart';
import 'package:pca/src/pages/matematicas/limites/desafio_limites.dart';
import 'package:pca/src/pages/matematicas/limites/ejemplos_limites.dart';
import 'package:pca/src/pages/matematicas/limites/ejercicios_limites.dart';
import 'package:pca/src/pages/matematicas/limites/introduccion_limites.dart';
import 'package:pca/src/pages/matematicas/limites/limite_indeterminados.dart';
import 'package:pca/src/pages/matematicas/limites/que_esunlimite.dart';
import 'package:pca/src/pages/matematicas/limites/uso_limites.dart';
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

    //Ecuaciones Diferenciales
    'IntroEdo':(BuildContext context) =>IntroEdo(),
    'SeparacionVariables':(BuildContext context) =>SeparacionVariables(),
    'EcuacionesHomogeneas':(BuildContext context) =>EcuacionesHomogeneas(),
    'EcuacionesLineales':(BuildContext context) =>EcuacionesLineales(),
    'EjerciciosEdo':(BuildContext context) =>ejercicios_edo(),
    'DesafioEdo':(BuildContext context) =>desafioEdo(),


    //Limites
    'IntroLimites':(BuildContext context) => IntroLimites(),
    'Limites1':(BuildContext context) => Limites1(),
    'UsoLimite':(BuildContext context) => UsoLimite(),
    'LimiteIndeterminado':(BuildContext context) =>LimiteIndeterminado(),
    'ejemplosLimites':(BuildContext context) =>ejemplosLimites(),
    'EjercicioLimites':(BuildContext context) => ejercicio_limite(),
    'Desafio_Limites':(BuildContext context) => desafio_limites(),



    //Curvas
    'IntroCurvas':(BuildContext context) => IntroCurvas(),
    'QueEsUnaCurva':(BuildContext context) => QueEsUnaCurva(),
    'UsoCurvas':(BuildContext context) => UsoCurvas(),
    'CalculoCurvas':(BuildContext context) => CalculoCurvas(),
    'EjemploCurvas':(BuildContext context) => ejemplos_curvas(),
    'EjerciciosCurvas':(BuildContext context) => EjerciciosCurvas(),
    'ResueltosCurvas':(BuildContext context) => resueltos_curvas(),
    'DesafioCurvas':(BuildContext context) => desafioCurvas(),

    //Matrices
    'IntroMatrices':(BuildContext context)=>IntroMatrices(),
    'Arreglos':(BuildContext context)=>Arreglos(),
    'Matriz':(BuildContext context) =>Matriz(),
    'MatrizJava':(BuildContext context)=>MatrizJava(),
    'CreandoMatriz':(BuildContext context)=>CreandoMatriz(),
    'MatrizPython':(BuildContext context)=>MatrizPython(),
    'MatrizPythonC':(BuildContext context)=>MatrizPythonC(),
    'EjerciciosM':(BuildContext context)=>EjerciciosM(),
    'EjerciciosM2':(BuildContext context)=>EjerciciosM2(),
    'DesafioFinalM':(BuildContext context)=>DesafioFinalM(),

    //Compuertas
    'IntroCompuertas':(BuildContext context)=>IntroCompuertas(),
    'PuertaLogica':(BuildContext context)=>PuertaLogica(),
    'TiposPuertas':(BuildContext context) =>TiposPuertas(),
    'TiposPuertas2':(BuildContext context) =>TiposPuertas2(),
    'TiposPuertas3':(BuildContext context) =>TiposPuertas3(),
    'TiposPuertas4':(BuildContext context) =>TiposPuertas4(),
    'Ejemplo': (BuildContext context) =>Ejemplo(),
    'EjerciciosC':(BuildContext context) => EjerciciosC(),
    'EjerciciosC2':(BuildContext context) => EjerciciosC2(),
    'DesafioFinalC':(BuildContext context) => DesafioFinalC(),

    //Listas
    'IntroListas':(BuildContext context)=>IntroListas(),
    'Nodo':(BuildContext context)=>Nodo(),
    'ListaEnlazada':(BuildContext context) =>ListaEnlazada(),
    'ListaDoble':(BuildContext context) =>ListaDoble(),
    'FuncionListaD': (BuildContext context) =>FuncionListaD(),
    'ListaPython':(BuildContext context) =>ListaPython(),
    'EjerciciosL':(BuildContext context) => EjerciciosL(),
    'EjerciciosL2':(BuildContext context) => EjerciciosL2(),
    'DesafioFinalL':(BuildContext context) => DesafioFinalL(),
  };
}