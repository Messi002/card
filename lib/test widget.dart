import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key ? key}): super (key: key);
  static const String title='MIRsqaured Tech';
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: title,
    home: RosT(),
  );
  }
}

class RosT extends StatefulWidget{
  const RosT({Key?key}):super(key: key);
  @override
  _RosTState createState() => _RosTState();
}

class _RosTState extends State<RosT>{
  int _selectedIndex=0;
  static const String title='MIRsqaured Tech';
  // _widgetOptions.elementAt(_selectedIndex),
  static const TextStyle optionStyle= TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions= <Widget>[
    Text('Index 0:Home', style: optionStyle,),
    Text('Index 1:Business', style: optionStyle,),
    Text('Index 2:Account', style: optionStyle,),
    Text('Index 3:Add photo', style: optionStyle,),
    Text('Index 4:Setting', style: optionStyle,),
  ];
  void Tapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: const Text(title),),
    body:
    Center(child:_widgetOptions.elementAt(_selectedIndex),),
    bottomNavigationBar: BottomNavigationBar(
     currentIndex: _selectedIndex,

      selectedItemColor: Colors.amberAccent,
      unselectedItemColor: Colors.white,
      onTap: Tapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          backgroundColor: Colors.black87,),
        BottomNavigationBarItem(
            label: 'Business',
            icon: Icon(Icons.business), backgroundColor: Colors.black87),
        BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.account_circle), backgroundColor: Colors.black87),
        BottomNavigationBarItem(
            label: 'Add photo',
            icon: Icon(Icons.add_a_photo_outlined), backgroundColor: Colors.black87),
        BottomNavigationBarItem(
        label: 'Settings',
            icon: Icon(Icons.settings),backgroundColor: Colors.black87)
      ],
  ),
  );
  }
}