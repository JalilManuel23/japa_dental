import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add'                 : Icons.add,
  'autorenew'           : Icons.autorenew,
  'delete'              : Icons.delete,
  'info'                : Icons.info
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color:  Colors.blue,);
}