import 'package:examen/src/pages/gradient_appbar.dart';
import 'package:flutter/material.dart';

class CrearCita extends StatefulWidget {
  @override
  _CrearCitaState createState() => _CrearCitaState();
}

class _CrearCitaState extends State<CrearCita> {

  String _fecha = '';
  TextEditingController _inputFieldDateControler = new TextEditingController(); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Japa Dental"),
          input(_crearInput()),
          input(_crearInputTel()),
          input(_crearFecha(context)),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre del paciente',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      )
    );
  }

  Widget _crearInputTel() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Número de telefono',
        labelText: 'Telefono',
        suffixIcon: Icon(Icons.contact_phone),
        icon: Icon(Icons.phone),
      )
    );
  }

  Widget input(Widget cajaTexto) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: cajaTexto,
    );
  }

 Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateControler,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Selecciona una Fecha',
        labelText: 'Selecciona una Fecha',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2018), 
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if(picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateControler.text = _fecha;
      });
    }
    
  }
}