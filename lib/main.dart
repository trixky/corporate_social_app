import 'package:flutter/material.dart';
import './screens/home.screen.dart';
import './screens/add.screen.dart';
import './screens/profil.screen.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: TasbPage(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class TasbPage extends StatefulWidget {
  TasbPage({Key key}) : super(key: key);

  @override
  _TasbPageState createState() => _TasbPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TasbPageState extends State<TasbPage> {
  int _selectedIndex = 0;
  static const String _homeLabel = 'Acceuil';
  static const String _addLabel = 'Ajouter';
  static const String _profileLabel = 'Profile';

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddPage(),
    ProfilPage(),
  ];
  static const List<String> _optionTitle = [
    _homeLabel,
    _addLabel,
    _profileLabel,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_optionTitle.elementAt(_selectedIndex)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _homeLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: _addLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: _profileLabel,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
