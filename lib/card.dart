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
    home:const HomeActivity()
  );
}

}



class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

    @override

    Widget build (BuildContext context){
      return Scaffold(
          appBar:AppBar(
            title:Text("Card Page")
          ),
          body:Center(
            
            child:Card(
              shadowColor: Color.fromRGBO(176, 234, 205, 1),
              color:Color.fromRGBO(33, 191, 115, 1),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 30,
              child:SizedBox(
                height:200,
                width:200,
                child:Center(child:Text('This is a card'),)
                
              )
            )
          )
      );
    
    }
}
