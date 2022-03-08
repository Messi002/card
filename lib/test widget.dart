
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



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
   return ListView(
     padding: const EdgeInsets.all(8),

     children: <Widget>[
       Container(
         padding: const EdgeInsets.all(15),
         color:Colors.teal[100],
         child: const ListTile(
           leading: Icon(Icons.settings),
           title: Text('Settings'),
           trailing: Icon(Icons.arrow_forward_ios),
         ),

       ),
       Card(
         elevation: 16,
         borderOnForeground: true,
         clipBehavior: Clip.antiAlias,
         semanticContainer: true,
         child: const ListTile(
           leading: Icon(Icons.wifi),
           title: Text('Wifi'),
           trailing: Icon(Icons.arrow_forward_ios),
         ),
         color:Colors.teal[200],
       ),

       Card(
         borderOnForeground: true,
         elevation: 6,
         semanticContainer: true,
         clipBehavior: Clip.antiAliasWithSaveLayer,
         child:Container(
         padding: const EdgeInsets.all(1),
         child: const ListTile(
           leading: Icon(Icons.accessibility_new_outlined),
           title: Text('Accessibility'),
           trailing: Icon(Icons.arrow_forward_ios),
         ),
         color:Colors.teal[300],
       ),),

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