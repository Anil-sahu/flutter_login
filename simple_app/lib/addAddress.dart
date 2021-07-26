import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'globalVar.dart' as global;

class AddAdress extends StatefulWidget {
  const AddAdress({Key? key}) : super(key: key);

  @override
  _AddAdressState createState() => _AddAdressState();
}

class _AddAdressState extends State<AddAdress> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Address"),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.00),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Lacality",
                  hintText: "India",
                ),
                validator: (Value) {
               
                  global.locality = Value;
                  if (Value!.isEmpty) {
                    return "please fill empty area";
                  } else {
                    return null;
                  }
                },
                // keyboardType: TextInputType.text,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "city/State",
                  hintText: "Raipur",
                ),
                validator: (Value) {
               //   Value = " ";
                  global.city = Value;
                  if (Value!.isEmpty) {
                    return "please fill empty area";
                  } else {
                    return null;
                  }
                },
                //keyboardType: TextInputType.text,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "pincod",
                  hintText: "493233",
                ),
                validator: (Value) {
                  global.pincode = Value;
                },
                //  keyboardType: TextInputType.text,
              ),
              SizedBox(height:40),
              ElevatedButton(
                onPressed: () async {
                 // if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/MainPage');
                  
                },
                child: Text("Add Address"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
