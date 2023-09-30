import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

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
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:BootstrapContainer(
            fluid:false,
            children: [
              BootstrapRow(
                height: 100,
                children: [
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.green
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.red
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.orange
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.blue
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.pink
                    )
                  ),

                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.redAccent
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.black
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.blueGrey
                    )
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.lightGreenAccent
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.purple
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.teal
                    )
                  ),
                    BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child:Container(
                      height: 100,
                      color:Colors.lime
                    )
                  ),
                  
                  
                ],
              )
            ],
          )
        )
    );
  }
  }