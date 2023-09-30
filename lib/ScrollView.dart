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
      body: SingleChildScrollView(  
        scrollDirection: Axis.horizontal,  /// Horizontal scroll direction hole horizontal ar vertical hole columd
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height: 200, width: 200, color: Colors.orange),
            Container(height: 200, width: 200, color: Colors.blue),
            Container(height: 200, width: 200, color: Colors.green),
            Container(height: 200, width: 200, color: Colors.black),
            Container(height: 200, width: 200, color: Colors.red),
            Container(height: 200, width: 200, color: Colors.pink),
            Container(height: 200, width: 200, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
