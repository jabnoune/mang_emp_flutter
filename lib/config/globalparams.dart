import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String,dynamic>> menus =[
    {
    "title":"Manage Employers","icon":Icon(Icons.group ,color:Colors.grey),"route":"/employers"
    },
    {
      "title":"Manage Customers","icon":Icon(Icons.group_rounded,color:Colors.grey),"route":"/customers"
    },
    {
      "title":"Settings","icon":Icon(Icons.settings ,color:Colors.grey),"route":"/settings"
    }
  ];
}