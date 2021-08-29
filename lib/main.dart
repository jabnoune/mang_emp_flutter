import 'package:flutter/material.dart';
import 'package:mangmment_emps/views/pages/customers.dart';
import 'package:mangmment_emps/views/pages/employers.dart';
import 'package:mangmment_emps/views/pages/home.dart';
import 'package:mangmment_emps/views/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>MyHomePage(),
        "/employers":(context)=>EmployersPage(),
        "/customers":(context)=>CustomersPage(),
        "/settings":(context)=>SettingsPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: "/",
      //home: MyHomePage(),
    );
  }
}






