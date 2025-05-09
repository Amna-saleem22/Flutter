import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //       title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        //          useMaterial3: true, // Optional for modern look
      ),
      home: const MyHomePage(title: ''),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Stack(
        children: [
          Container(
            width: 500,
            height: 200,
            color: Colors.pinkAccent,
            child: Image.asset('asset/image/app.png'),
          ),
          Container(width: 500, height: 200, color: Colors.yellow),
          Container(width: 500, height: 200, color: Colors.red),
          Container(width: 500, height: 200, color: Colors.pinkAccent),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.purpleAccent,
              alignment: Alignment.center,
            ),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.purpleAccent,
              alignment: Alignment.center,
              child: Text(
                "The Text widget is used to display this random string",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
