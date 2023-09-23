import 'package:flutter/material.dart';

main(){
  runApp(const MyApp()); //Application create korte hobe

}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    
    return  MaterialApp(
      theme:ThemeData(primarySwatch: Colors.red),
      darkTheme:ThemeData(primarySwatch: Colors.green),
      color:Colors.blue,
      debugShowCheckedModeBanner: false,
      home:const HomeActivity()
      );

  }

}




class HomeActivity extends StatelessWidget{
  
const HomeActivity({super.key});

  @override

  Widget build(BuildContext context){
 
    return DefaultTabController(
    length:8,
      child:Scaffold(
        appBar:AppBar(
          title:Text("Onnow Partner App"),
          bottom: TabBar(
            isScrollable: true,
            tabs:[
              Tab(icon: Icon(Icons.home),text:'Home'),
              Tab(icon: Icon(Icons.email),text:'Message'),
              Tab(icon: Icon(Icons.settings),text:'Settings'),
              Tab(icon: Icon(Icons.contact_page),text:"Contact"),
              Tab(icon: Icon(Icons.person),text:"Profile"),
              Tab(icon: Icon(Icons.alarm),text:"Alarm"),
              Tab(icon: Icon(Icons.balance),text:"Balance"),
              Tab(icon: Icon(Icons.rocket_launch),text:"Boost"),
            ],
        )
        ),
      // body:TabBarView(
      //   children: [
          
      //   ],
      //   )
      )
    );

  }



}
