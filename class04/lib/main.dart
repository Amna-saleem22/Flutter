import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: ThemeData());
  }
}

final List<String> fruits = [
  'Apple',
  'Banana',
  'Orange',
  'Mango',
  'Pineapple',
  'Strawberry',
  'Watermelon',
  'Grapes',
  'Cherry',
  'Peach',
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),

    body: ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.food_bank),
          title: Text(fruits[index]),
          subtitle: Text('Fruit number ${index + 1}'),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    ),

    // body: ListView(
    //   padding: const EdgeInsets.all(8),
    //   reverse: true,
    //   scrollDirection: Axis.vertical,
    //   children: [
    //     Container(
    //       width: 70,
    //       height: 50,
    //       color: Colors.amber,
    //       child: const Text(
    //         "A",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.blueAccent,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       width: 70,
    //       height: 50,
    //       color: Colors.deepOrange,
    //       child: const Text(
    //         "B",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.blueAccent,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       width: 70,
    //       height: 50,
    //       color: Colors.blue,
    //       child: const Text(
    //         "C",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.blueAccent,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       width: 70,
    //       height: 50,
    //       color: const Color.fromARGB(255, 143, 128, 76),
    //       child: const Text(
    //         "D",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.blueAccent,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       width: 70,
    //       height: 50,
    //       color: const Color.fromARGB(255, 97, 85, 50),
    //       child: const Text(
    //         "E",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.blueAccent,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  );
}
