import 'dart:math';

import 'package:examen/src/pages/crear_cita.dart';
import 'package:examen/src/pages/editar_cita.dart';
import 'package:examen/src/pages/eliminar_cita.dart';
import 'package:examen/src/pages/gradient_appbar.dart';
import 'package:examen/src/pages/informacion.dart';
import 'package:flutter/material.dart';

import 'package:examen/src/providers/menu_provider.dart';
import 'package:examen/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Japa Dental"),
          Stack(
            children: [
              
              // _fondoApp(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _titulos(),
                    _botonesRedondeados(context),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
    
      // body: Stack(
      //   children: [
      //     GradientAppBar("Japa Dental"),
      //     _fondoApp(),
      //     SingleChildScrollView(
      //       child: Column(
      //         children: [
      //           _titulos(),
      //           _botonesRedondeados(),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      // bottomNavigationBar: _bottomNavigationBar(context)
    // );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Aplicación de Administración', style: TextStyle(color: Colors.black, fontSize: 27.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Selecciona la categoria a Administrar', style: TextStyle(color: Colors.black, fontSize: 16.0))
          ]
        ),
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return Table(
          children: [
            TableRow(
              children: [
                _crearBotonRedondeado(context, Colors.blue[500], Icons.add_circle_outline, 'Crear Cita', 0),
                _crearBotonRedondeado(context, Colors.blue[500], Icons.edit, 'Editar Cita', 1),
              ]
            ),
            TableRow(
              children: [
                _crearBotonRedondeado(context, Colors.blue[500], Icons.delete, 'Eliminar Cita', 2),
                _crearBotonRedondeado(context, Colors.blue[500], Icons.info,'Información', 3),
              ]
            )
          ],
        );
      },
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.blue[600],
        primaryColor: Colors.grey[500],
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(237, 236, 236, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30.0),
            title: Container(),
          ),
        ],
      ),
    );
  }

  Widget _crearBotonRedondeado(BuildContext context, Color color, IconData icono, String texto, int i) {
    var opciones = [CrearCita(), EditarCita(), EliminarCita(), Informacion()];
    
    return InkWell(
          child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(237, 236, 236, 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0)
              ),
              Text(texto, style: TextStyle(color: color)),
              SizedBox(height: 5.0),
            ],
          ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => opciones[i]),
        ); 
      }
    );
  }
}