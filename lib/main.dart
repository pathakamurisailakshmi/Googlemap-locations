import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/google_map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      
      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Home Screen'),
      ),
      body:Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'google map',
              style:TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold)
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(
          builder:(context)=>GoogleMapScreen(),
          ),
          ),
        tooltip: 'Google Map',
        child: Icon(Icons.pin_drop_outlined
      ),
      ), 
    );
  }
}
