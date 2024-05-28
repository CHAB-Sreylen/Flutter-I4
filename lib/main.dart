import 'package:first_app/testscreen.dart';
import 'package:flutter/material.dart';
// import 'widget_test.dart';
// import 'package:first_app/.dart';

void main() {
  // runApp(const MyApp());
  // runApp(const widget_test());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // stateless, can only use in materiel app
      title: 'Flutter Demo', // argument constructure 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 104, 183, 58)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  //take title from the previous title 
  final String title;

  @override
  //create state to update the number in hompage 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) { // call all widget 
    
    return Scaffold( // reposiveless, scafffold argument: appBar
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('Helloooooo'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // when click on button + : called the funtion increament 
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      // 
    );
  }
}

