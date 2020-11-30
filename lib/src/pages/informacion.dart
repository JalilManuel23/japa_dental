import 'package:examen/src/pages/gradient_appbar.dart';
import 'package:flutter/material.dart';


class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: [
          GradientAppBar("Japa Dental"),
          Card(
            child: Column(children: [
              FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'), 
                image: NetworkImage('https://educacion.once.es/cres/cre-barcelona/galeria-de-imagenes/cre-localizacion-instalaciones/mapa-de-la-zona-ubicacion-del-cre/image_preview'), 
                fadeInDuration: Duration(milliseconds: 200),
                height: 300.0,
                fit: BoxFit.cover,
              ),
              // Image(image: NetworkImage(imagenes[numImagen])),
              Container(padding: EdgeInsets.all(10.0),child: Text('Ubicación')),
            ],),
          ),
          Card(
            child: Column(children: [
              FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'), 
                image: NetworkImage('https://www.acomee.com.mx/images/horario-de-atencion.jpg'), 
                fadeInDuration: Duration(milliseconds: 200),
                height: 300.0,
                fit: BoxFit.cover,
              ),
              // Image(image: NetworkImage(imagenes[numImagen])),
              Container(padding: EdgeInsets.all(10.0),child: Text('Horario')),
            ],),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
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
}