import 'package:flutter/material.dart';

List <String> nombres = ['Juan Perez', 'Miguel Sánchez', 'Manuel López', 'Pablo Torres'];

class EliminarCita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eliminar Cita'),
        leading: Icon(Icons.delete),
      ),
      body: ListView(
        children: _crearCitas()  
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

List<Widget> _crearCitas() {
  final List<Widget> citas = [];

  for(int i = 0; i < 4; i++) {
    final widgetTemp = ListTile(
      title: Text('Cita #${i + 1}'),
      subtitle: Text(nombres[i]),
      leading: Icon(Icons.assignment_ind),
      trailing: Icon(Icons.delete, color: Colors.blue,),
    );
    citas..add(widgetTemp)
        ..add(Divider());
  }

  return citas;
}