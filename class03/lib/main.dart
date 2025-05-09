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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.red[600]),
          Container(
            width: 50,
            height: 50,
            color: const Color.fromARGB(255, 114, 74, 24),
          ),
          Container(width: 50, height: 50, color: Colors.yellowAccent[600]),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 50, height: 50, color: Colors.red[600]),
              Container(
                width: 50,
                height: 50,
                color: const Color.fromARGB(255, 114, 74, 24),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellowAccent[600],
                child: Text("This is style", style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
