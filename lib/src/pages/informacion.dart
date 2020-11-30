import 'package:flutter/material.dart';


class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información'),
        leading: Icon(Icons.info),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
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
      )
    );
  }
}