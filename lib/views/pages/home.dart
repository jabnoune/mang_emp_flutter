import 'package:flutter/material.dart';
import 'package:mangmment_emps/views/widgets/my_drawer.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(title: Text('Home'),),
        body: Center(
          child: Text("App manage employer",
              style: Theme.of(context).textTheme.bodyText1),
        )
    );

  }

}