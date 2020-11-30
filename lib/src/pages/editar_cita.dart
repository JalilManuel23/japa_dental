import 'package:flutter/material.dart';

class EditarCita extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Cita'),
        leading: Icon(Icons.autorenew),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Center(
                child:Text('No. de cita:',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              // ignore: missing_required_param
              child: DropdownButton(
                items: [
                  DropdownMenuItem(child: Text('1')),
                  DropdownMenuItem(child: Text('2')),
                  DropdownMenuItem(child: Text('3')),
                  DropdownMenuItem(child: Text('4')),
                  DropdownMenuItem(child: Text('5')),
                  DropdownMenuItem(child: Text('6')),
                ],
                onChanged: (value){},
              ),
            ),
          ),
          ListTile(
            title: Center( 
              child: Text('Nombre(s):',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '   Nombre(s)'
            ),
          ),
          ListTile(
            title: Center( 
              child: Text('Apellido materno:',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '   Apellido materno',
            ),
          ),
          ListTile(
            title: Center( 
              child: Text('Apellido paterno:',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '   Apellido paterno'
            ),
          ),
          ListTile(
            title: Center( 
              child: Text('Fecha:',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: (){
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
                initialEntryMode: DatePickerEntryMode.input
              );
            },
            child: Text('Seleccionar'),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('EDITAR CITA',
              style: TextStyle(
                color: Color(0xFFE1F5FE),
              ),
            ),
            color: Color(0xFF0277BD),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    );
  }
}