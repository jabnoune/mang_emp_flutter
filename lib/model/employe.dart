import 'dart:convert';

Employe employeeModelJson(String str) =>
    Employe.fromJson(json.decode(str));

String employeeModelToJson(Employe data) => json.encode(data.toJson());

class Employe {
  int id;
  String firstName;
  String lastName;


  Employe({required this.id,required this.firstName, required this.lastName});

  factory Employe.fromJson(Map<String, dynamic> json) => Employe(
      firstName: json["firstName"], lastName: json["lastName"], id: json["id"]);

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    'id': id,
  };

  String get firstname => firstName;

  String get lastname => lastName;
}
