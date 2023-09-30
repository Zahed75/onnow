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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                  lg: 12,
                  child: Container(
                    height: 400,
                    color: Colors.redAccent,
                  )),

              ResponsiveGridCol(
                  xl: 3,
                  lg: 3,
                  md: 3,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    height: 500,
                    color: Colors.orange,
                  )),
                   ResponsiveGridCol(
                  xl: 3,
                  lg: 3,
                  md: 3,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    height: 500,
                    color: Colors.blue,
                  )),
                     ResponsiveGridCol(
                  xl: 3,
                  lg: 3,
                  md: 3,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    height: 500,
                    color: Colors.green,
                  )),
                     ResponsiveGridCol(
                  xl: 3,
                  lg: 3,
                  md: 3,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    height: 500,
                    color: Colors.black,
                  )),
                     ResponsiveGridCol(
                  xl: 3,
                  lg: 3,
                  md: 3,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    height: 500,
                    color: Colors.greenAccent,
                  )),
            ],
          ),
        ));
  }
}
