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
    color:Colors.orange,
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
      body:Container(
        width:double.infinity,
        height:300,
        color:Colors.orange,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16/9,
          child:Container(
            color:Colors.green,
          ) ,
          ),
      )
    );
  }
}