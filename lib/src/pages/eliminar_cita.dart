import 'package:examen/src/pages/gradient_appbar.dart';
import 'package:flutter/material.dart';

List <String> nombres = ['Juan Perez', 'Miguel Sánchez', 'Manuel López', 'Pablo Torres'];

class EliminarCita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: _crearCitas(),
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

List<Widget> _crearCitas() {
  final List<Widget> citas = [];
  citas.add(GradientAppBar("Japa Dental"));

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