import 'package:cloud_firestore/cloud_firestore.dart';

class EmployeeModel {
  String? docId;
  String? name;
  String? address;

  EmployeeModel({this.docId, this.name, this.address});

  EmployeeModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    name = data["name"];
    address = data["address"];
  }
}
