import 'package:flutter/material.dart';

// Import the Sites for Each Topic
import 'mengen.dart';
import 'funktionen.dart';

// Latex Support
import 'package:flutter_math_fork/ast.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_math_fork/tex.dart';

Color themeColor = Color.fromARGB(255, 194, 235, 212);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diskrete Strukturen',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: themeColor,
          ),
          useMaterial3: true,
          fontFamily: 'Monserrat'),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Diskrete Strukturen'),
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
  // current selected Index
  int selectedIndex = 0;

  // update current Selected Index
  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // This is where the different Pages will be stored
  static List<Widget> pageOptions = <Widget>[
    Mengen(),
    Funktionen(),
  ];

  // Custom DrawerTile
  Widget DrawerTile(String text, int index) {
    return ListTile(
      title: Text(text),
      selected: selectedIndex == 0,
      onTap: () {
        onItemTapped(index);
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(child: pageOptions[selectedIndex]),
      
      

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Themen',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: themeColor,
              ),
            ),
            DrawerTile('Mengen', 0),
            DrawerTile('Funktionen', 1),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
