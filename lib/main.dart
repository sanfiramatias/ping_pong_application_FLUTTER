import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './camera_page.dart';
void main()
{
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     home:MyApp()
    );
  }
}
class MyApp extends StatefulWidget{
  const MyApp({Key? key}): super(key:key);

  @override
    _MyAppState createState()=> _MyAppState();  
}
class _MyAppState extends State <MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body: const Center(
          child: Text(
          'Apasa pe "Start" pentru a inregistra!',
          style:TextStyle(fontSize:20),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, 
            CupertinoPageRoute(builder: (context)=>const CameraPage()));
        },
        label: const Text('Start'),
        ),
      ),
    );
  }
}
