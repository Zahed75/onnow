import 'package:flutter/material.dart';

void main() {
  runApp(const LayOutApp());
}

class LayOutApp extends StatelessWidget {
  const LayOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: LayoutActivity(),
    );
  }
}

class LayoutActivity extends StatelessWidget {
  const LayoutActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout App")),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Container(
              height: 400,
              width: 400,
              color: Colors.red, // Set color here
            );
          } else {
            return Container(
              height: 200,
              width: 200,
              color: Colors.orange, // Set color here
            );
          }
        },
      ),
    );
  }
}
