import 'package:flutter/material.dart';
import 'package:onnow/style.dart';

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
        appBar: AppBar(
          title: Text("Expndable"),
          ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("Screen Size",style:HeadLine(context),),
            ],
        ),
     );
  }
}
