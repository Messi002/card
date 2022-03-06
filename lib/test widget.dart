
import 'package:flutter/material.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key ? key}): super(key: key);
  static const _title='MIRsquared Tech';
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.pink,visualDensity: VisualDensity.adaptivePlatformDensity),
     title:_title ,
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(title: const Text(_title),),
       body: Material(child:Ros(),),

     ),
   );
  }
}


//ignore
class Ros extends StatefulWidget {
  const Ros({Key ? key}) : super(key: key);
  @override
  _RosState  createState() => _RosState();
}

class _RosState extends State<Ros>{

  @override
  Widget build(BuildContext context) {
   return GridView.count(
     primary: false,
     padding: const EdgeInsets.all(20),
     crossAxisSpacing: 10,
     mainAxisSpacing: 10,
     crossAxisCount: 2,
     children: <Widget>[
       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('He\'d have you all unravel at the'),
         color:Colors.teal[100],
       ),

       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('Heed not the rabble'),
         color:Colors.teal[200],
       ),

       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('Sound of screams but the'),
         color:Colors.teal[300],
       ),

       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('Who scream'),
         color:Colors.teal[400],
       ),

       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('Revolution is coming'),
         color:Colors.teal[500],
       ),

       Container(
         padding: const EdgeInsets.all(8),
         child: const Text('Revolution, they...'),
         color:Colors.teal[600],
       ),
       ],
   );
  }
}