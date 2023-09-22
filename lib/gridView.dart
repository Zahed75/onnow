import 'package:flutter/material.dart';

main(){
  runApp(MyApp()); //Application create korte hobe

}

class MyApp extends StatelessWidget{
  
   MyApp({super.key});

  @override
  Widget build(BuildContext context){
    
    return  MaterialApp(
      theme:ThemeData(primarySwatch: Colors.red),
      darkTheme:ThemeData(primarySwatch: Colors.green),
      color:Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity()
      );

  }

}


class HomeActivity extends StatelessWidget{
  
HomeActivity({super.key});

  MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message))
    );
  }

var MyItems=[

  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCHICKEN_CHEESE_MOMO.jpg&w=1920&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FTEK-Pizza-Bangkok-itemImage.jpeg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},
  {"img":"https://plus.onnow.io/_next/image/?url=https%3A%2F%2Fv2.onnow.io%2Fimages%2F%2Fitems%2FCRISPY_CHICKEN.jpg&w=2048&q=50","title":"Fuiyoh"},

];


// onTap Action with snackbar

mySnackBar(context,msg){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}


// Button Style
  @override

  Widget build(BuildContext context){
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


   body:GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        childAspectRatio: 1.2
      ),
       itemCount: MyItems.length,
      itemBuilder: (context,index){
          
          return GestureDetector(
            onTap: (){mySnackBar(context, MyItems[index]['title']);},
            child: Container(
              margin: EdgeInsets.all(5),
              width:double.infinity,
              height:350,
              child:Image.network(MyItems[index]['img']!,fit:BoxFit.fill,),

            ),
          );

      },
   )

    );
  }


}
