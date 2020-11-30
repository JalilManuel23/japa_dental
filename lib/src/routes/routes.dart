import 'package:flutter/material.dart';

import 'package:examen/src/pages/crear_cita.dart';
import 'package:examen/src/pages/editar_cita.dart';
import 'package:examen/src/pages/informacion.dart';
import 'package:examen/src/pages/home_page.dart';
import 'package:examen/src/pages/eliminar_cita.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'             : (BuildContext context) => HomePage(),
    'crear_cita'    : (BuildContext context) => CrearCita(),
    'editar_cita'   : (BuildContext context) => EditarCita(),
    'eliminar_cita' : (BuildContext context) => EliminarCita(),
    'informacion'        : (BuildContext context) => Informacion(),
  };
}
