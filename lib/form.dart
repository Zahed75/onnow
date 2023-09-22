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

//alret Dialog!!

  MyAlertDialog(context){

    return showDialog(
        context: context,
        builder: (BuildContext context){
            return Expanded(
              child: AlertDialog(
                title:const Text('Alert!'),
                content:const Text('Do You Want to Delete'),
                actions: [
                  TextButton(

                
                    onPressed: (){
                      MySnackBar("Deleted SuccessFully", context);
                      Navigator.of(context).pop();

                      }, child: const Text("Yes")),

                  TextButton(
                    onPressed: (){Navigator.of(context).pop();}, child: const Text("No")),
                ],

              )
              
              );
        }
     );
  }


// Button Style
  @override

  Widget build(BuildContext context){

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(

  minimumSize: Size(double.infinity, 60)
);


    
    return Scaffold(
      appBar: AppBar(
        title:const Text(
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
          IconButton(onPressed: (){MySnackBar("Comments loading",context);}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Searching",context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Email list",context);}, icon: const Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar("Notification arrived",context);}, icon: const Icon(Icons.notifications_sharp)),
        ],

      ),
//======Floation action button

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("Added Successfully!", context);
        },
        child:const Icon(Icons.add),

      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items:const [
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
      ///Left Menu Bar
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(
              padding:const EdgeInsets.all(0),
              child:UserAccountsDrawerHeader(
                  decoration:const BoxDecoration(color:Colors.green),
                  accountName: const Text("Onnow Limited"),
                  accountEmail: const Text("onnow-customer.io@gmail.com"),
                  currentAccountPicture: Image.network("https://www.onnow.io/wp-content/uploads/2021/05/onnow.png"),

              ),
              ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text("Home"),
              onTap: (){MySnackBar("Home", context);},
              ),
            ListTile(
              leading:const Icon(Icons.gif_box_sharp),
              title:const Text("Orders"),
              onTap: (){MySnackBar("Orders", context);},),
            ListTile(
              leading:const Icon(Icons.money),
              title:const Text("Payment"),
              onTap: (){MySnackBar("Payment", context);},),
            ListTile(
              leading:const Icon(Icons.note),
              title:const Text("Delivered"),
              onTap: (){MySnackBar("Delivered", context);},),

          ],
        )
      ),


    body:Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"))),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last  Name"))),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address"))),
          Padding(padding: EdgeInsets.all(20),child: ElevatedButton(onPressed: (){},child:Text('Submit'),style:buttonStyle,),)
        ],
    )

    );
  }


}
