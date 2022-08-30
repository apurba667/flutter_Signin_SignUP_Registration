import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _PhoneNumber = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _address = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users.add({
      "First_Name": _firstName.text,
      "Last_Name": _lastName.text,
      "Phone_Number": _PhoneNumber.text,
      "Age": _age.text,
      "Address": _address.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            TextField(
              controller: _firstName,
              decoration: InputDecoration(
                  hintText: "Enter First Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _lastName,
              decoration: InputDecoration(
                  hintText: "Enter Last Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _PhoneNumber,
              decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _age,
              decoration: InputDecoration(
                  hintText: "Enter Age",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _address,
              decoration: InputDecoration(
                  hintText: "Enter Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  addUser();
                },
                child: Text("Register"))
          ],
        )),
      ),
    );
  }
}
