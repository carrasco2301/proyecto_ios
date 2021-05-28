import 'package:flutter/material.dart';
import 'package:carrasco/pages/first_pages.dart';
import 'package:carrasco/pages/second_pages.dart';
import 'package:carrasco/pages/third_pages.dart';

void main() => runApp(CarrascoApp());

class CarrascoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarrascoBurger',
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    );
  }
} // Fin clase Carrascoapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Fin clase con PAgina inicio con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FirtsPage();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //Fin de switch

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(icon: Icon(Icons.format_align_center, color: Colors.cyan, size: 30.0), title: Text('Ingreso')),
        BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.cyan, size: 30.0), title: Text('Alumno')),
        BottomNavigationBarItem(icon: Icon(Icons.book, color: Colors.cyan, size: 30.0), title: Text('Materia')),
      ]), // bottom
    ); //Fin de scaffold
  } //Fin widget build
} //Fin de clase _PaginaInicioState
