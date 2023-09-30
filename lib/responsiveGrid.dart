import 'package:flutter/material.dart';
import 'package:onnow/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() {
  runApp(const newTwoApp());
}

class newTwoApp extends StatelessWidget {
  const newTwoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: GridActivity(),
    );
  }
}

class GridActivity extends StatelessWidget {
  const GridActivity({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive Grid"),
          ),
        body:ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg:12,
              child:Container(
                height:400,
                color:Colors.green,
              )
              ),
              ResponsiveGridCol(
              lg:6,md:6,xl:4,sm:9,xs:12,
              child:Container(
                height:200,
                color:Colors.orange,
              )
              ),

          ],
        ) ,
        );
  }
}
