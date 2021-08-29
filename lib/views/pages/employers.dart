import 'package:flutter/material.dart';
import 'package:mangmment_emps/views/pages/listemploers.dart';

class EmployersPage extends StatelessWidget {
  EmployersPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of All Employers"),
      ),
        body: Container(

            child: ListEmployers()
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child:Icon(Icons.add) ,

      ),
    );
  }

}