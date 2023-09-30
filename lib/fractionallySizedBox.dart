

import 'package:flutter/material.dart';

main (){
  runApp(const BoxApp());
}


class BoxApp extends StatelessWidget{

const BoxApp({super.key});

@override
Widget build (BuildContext context){
  return MaterialApp(
    theme:ThemeData(primarySwatch: Colors.green),
    darkTheme: ThemeData(primarySwatch: Colors.green),
    color:Colors.orange,
    debugShowCheckedModeBanner: false,
    home:const BoxActivity()
  );
}

}



class BoxActivity extends StatelessWidget{
  const BoxActivity({super.key});
    @override

    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title:Text("Box Size")
        ),
        body:Center(
          child:FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.3,
            child:Container(
              color:Colors.green,
            )
          )
        )
      );
    }
}


