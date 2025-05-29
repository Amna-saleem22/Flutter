import 'package:flutter/material.dart';
import 'package:class11/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: SplashScreen(),
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
        title: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Ayesha"),
                accountEmail: Text("ayesha23@gmail.com")),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow,
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                Icons.car_crash,
                color: Colors.yellow,
              ),
              title: Text("Car"),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_emergency,
                color: Colors.yellow,
              ),
              title: Text("Contact"),
            ),
          ],
        ),
      ),
      body:Column(children: [
        child: const Text(
              "As of Flutter 2.5, the launch and splash screens have been consolidated—Flutter now only implements the Android launch screen, which is displayed until the framework draws the first frame. This launch screen can act as both an Android launch screen and an Android splash screen via customization, and thus, is referred to as both terms"),
         ],
         );
       Center(
        child: Container(
         
          width: 100,
          height: 100,
          color: Colors.red,
          child: Center(
              child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
