import 'package:flutter/material.dart';

void main() {
  runApp(const newApp());
}

class newApp extends StatelessWidget {
  const newApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: ScreenActivity(),
    );
  }
}

class ScreenActivity extends StatelessWidget {
  const ScreenActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expndable")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            fit:FlexFit.tight,
            flex:25,
            child:Container(color:Colors.green),
          ),
           Flexible(
            fit:FlexFit.loose,
            flex:25,
            child:Container(color:Colors.blue),
          ),
           Flexible(
            flex:25,
            child:Container(color:Colors.orange),
          ),
             Flexible(
            flex:25,
            child:Container(color:Colors.blueAccent),
          ),
         
        ],
      ),
    );
  }
}
