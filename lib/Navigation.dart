
import 'package:flutter/material.dart';

main(){
  runApp(const HomeApp());
}


class HomeApp extends StatelessWidget{
  const HomeApp({super.key});

  @override

  Widget build (BuildContext context){
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
 

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "HomePage",
          style: TextStyle(color:Colors.white),
          
          ),
        
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderActitvity()));
            },
            
             child:Text("Order Page")
             ),
             ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuActitvity()));
              },
              child:Text("Menu Page")
             )
        ],
      )
    );
  }
}






class OrderActitvity extends StatelessWidget{
  const OrderActitvity ({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title:Text("Welcome Order Page"),
      ),
    );
  }
}



class MenuActitvity extends StatelessWidget{
  const MenuActitvity ({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title:Text("Welcome Menu Page"),
      ),
    );
  }
}



