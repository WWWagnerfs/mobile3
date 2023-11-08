import 'package:flutter/material.dart';
import 'package:infocar/pages/carros.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 174, 169, 184)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'InfoCar App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;
  List<Widget> pages = const [
    PageCar(),
    Text(
      "2",
      style: TextStyle(fontSize: 48),
    ),
    Text(
      "3",
      style: TextStyle(fontSize: 48),
    ),
  ];

  void _changeIndex(value) {
    setState(() {
      _selectIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(249, 72, 55, 150),
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: Center(
        child: pages.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.car_crash_outlined), label: 'Carros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
        currentIndex: _selectIndex,
        onTap: _changeIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
