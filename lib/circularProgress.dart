import 'package:flutter/material.dart';

main(){
  runApp(const HomeApp());
}



class HomeApp extends StatelessWidget{

const HomeApp({super.key});

@override

Widget build (BuildContext context){
  return MaterialApp(
    theme:ThemeData(primarySwatch: Colors.green),
    darkTheme: ThemeData(primarySwatch: Colors.green),
    color:Colors.blue,
    debugShowCheckedModeBanner: false,
    home:const ProgressActivity()
  );
}
}


class ProgressActivity extends StatelessWidget{
  const ProgressActivity({super.key});

  @override

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Progress check"),
      ),
      body:Center(
        child:LinearProgressIndicator(
          color:Colors.green,
          // strokeWidth: 3,

        ),
      )
    );
  }
}