import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _messengerkey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerkey,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value == '') {
                          return "Name can't be empty";
                        }
                        if (RegExp(r'^[a-zA-Z]+$').hasMatch(value!) == false) {
                          return 'Name must contain only alphabetic characters';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your Name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email address.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your Email",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value == null ||
                            value.length < 8 ||
                            !RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                          return 'Password must be at least 8 characters long and include letters, numbers, and symbols.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.length != 13 ||
                            !RegExp(r'^\d{13}$').hasMatch(value)) {
                          return 'CNIC must be exactly 13 digits.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your CNIC",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            !RegExp(r'^\d{10,12}$').hasMatch(value)) {
                          return 'Contact number must be between 10 to 12 digits.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your Contact number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value == '') {
                          return "Address can't be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Your Address",
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState?.validate() == true) {
                          _messengerkey.currentState?.showSnackBar(
                            SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Text("Confirmed"))
                ],
              )),
        ),
      ),
    );
  }
}
