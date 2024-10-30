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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 90, left: 20, right: 20),
          child: Form(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Name",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(11),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Email",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(11),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Password",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(11),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your CNIC",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(11),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Contact number",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(11),
                child: TextFormField(
                  validator: (value) {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Address",
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Confirmed"))
            ],
          )),
        ),
      ),
    );
  }
}
