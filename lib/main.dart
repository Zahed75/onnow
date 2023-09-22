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

  MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message))
    );
  }



  @override

  Widget build(BuildContext context){
    final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding:EdgeInsets.all(25),
    backgroundColor: Colors.orange,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      
    )
 
);
    
    return Scaffold(
      appBar: AppBar(
        title:Text(
        "Resto App",
        style:TextStyle(color: Colors.white,
        ),
        ),
        titleSpacing: 10,
        
        // centerTitle: true,
        toolbarHeight: 50,
        toolbarOpacity: 0.8,
        elevation: 20,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("Comments loading",context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Searching",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Email list",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar("Notification arrived",context);}, icon: Icon(Icons.notifications_sharp)),
        ],

      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child:Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("Added Successfully!", context);
        },

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
      
        ],
        onTap: (int index){
            if(index ==0){
              MySnackBar("You are in Home", context);
            }
            if(index ==1){
              MySnackBar("Profile", context);
            }
            if(index ==2){
              MySnackBar("Call to customer", context);
            }
        },
       
      ),
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(
              padding:EdgeInsets.all(0),
              child:UserAccountsDrawerHeader(
                  decoration:BoxDecoration(color:Colors.green),
                  accountName: Text("Onnow Limited"),
                  accountEmail: Text("onnow-customer.io@gmail.com"),
                  currentAccountPicture: Image.network("https://www.onnow.io/wp-content/uploads/2021/05/onnow.png"),

              ),
              ),
            ListTile(
              leading:Icon(Icons.home),
              title:Text("Home"),
              onTap: (){MySnackBar("Home", context);},
              ),
            ListTile(
              leading:Icon(Icons.gif_box_sharp),
              title:Text("Orders"),
              onTap: (){MySnackBar("Orders", context);},),
            ListTile(
              leading:Icon(Icons.money),
              title:Text("Payment"),
              onTap: (){MySnackBar("Payment", context);},),
            ListTile(
              leading:Icon(Icons.note),
              title:Text("Delivered"),
              onTap: (){MySnackBar("Delivered", context);},),

          ],
        )
      ),

//container example

      // body:Container(
      //   child: Image.network("https://media.licdn.com/dms/image/D560BAQF_IjL_YnB2WQ/company-logo_200_200/0/1687087494529?e=2147483647&v=beta&t=8rOh6wqJw84isiiLc7WkQWGwCkTtLF-Ied__e0Ft81k"),
      //   // margin: EdgeInsets.fromLTRB(40, 50, 10, 30),
      //   margin: EdgeInsets.all(30),
      //   padding:EdgeInsets.all(40),
      //   alignment: Alignment.topCenter,
      //   height: 250,
      //   width:300,
      //   decoration: BoxDecoration(
      //     color:Colors.blueGrey,
      //     border:Border.all(color: Colors.blueAccent,width: 6)
     
      //   ),

      // ),   
///contatiner exapmple
///
    // body:Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Container(height: 100,width:100,child: Image.network("https://media.licdn.com/dms/image/D560BAQF_IjL_YnB2WQ/company-logo_200_200/0/1687087494529?e=2147483647&v=beta&t=8rOh6wqJw84isiiLc7WkQWGwCkTtLF-Ied__e0Ft81k"),),
    //     Container(height: 100,width:100,child: Image.network("https://media.licdn.com/dms/image/D560BAQF_IjL_YnB2WQ/company-logo_200_200/0/1687087494529?e=2147483647&v=beta&t=8rOh6wqJw84isiiLc7WkQWGwCkTtLF-Ied__e0Ft81k"),),
    //     Container(height: 100,width:100,child: Image.network("https://media.licdn.com/dms/image/D560BAQF_IjL_YnB2WQ/company-logo_200_200/0/1687087494529?e=2147483647&v=beta&t=8rOh6wqJw84isiiLc7WkQWGwCkTtLF-Ied__e0Ft81k"),),
    //   ],
    // ) ,  

// button sytel
    // body:Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     TextButton(onPressed: (){MySnackBar("Pay with bkash",context);}, child: Text("Bkash")),
    //     ElevatedButton(onPressed: (){MySnackBar("Heat with Nagad", context);}, child: Text("Nagad"),style:buttonStyle),
    //     OutlinedButton(onPressed: (){MySnackBar("Online Payment", context);}, child: Text("Pay with Onnow"))
    //   ],
    // ),

    // );
  }


}
