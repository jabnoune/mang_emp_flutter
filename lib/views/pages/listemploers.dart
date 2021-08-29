import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mangmment_emps/model/employe.dart';
import 'package:http/http.dart' as http;

class ListEmployers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return getAllEmployeesState();
  }
}

class getAllEmployeesState extends State<ListEmployers> {
  //var employess = List<Employe>.generate(200, (index) => null);

  Future<List<Employe>> getEmployees() async {
    var data = await http.get('http://10.0.2.2:9000/api/employer/getallemployees');
    var jsonData = json.decode(data.body);

    List<Employe> employee = [];
    for (var e in jsonData) {
      Employe employees = new Employe(id: 0, firstName: '', lastName: '');
      employees.id = e["id"];
      employees.firstName = e["firstName"];
      employees.lastName = e["lastName"];
      employee.add(employees);
    }
    return employee;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: getEmployees(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(child: Center(child: Icon(Icons.error)));
            }
            return ListView.builder(
              itemCount: snapshot.data.length ,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
                    child: ListTile(
                      title: Text('${snapshot.data[index].firstName}' +
                          '${snapshot.data[index].lastName}'),
                    ),
                  ),
                );
              },
            );
          },
    ),
      );
  }


  }



