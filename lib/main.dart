import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // Builds the UI for app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App', // Set app name
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CounterScreen(), // Sets CounterScreen as first screen when app starts
    );
  }
}

// Stateful widget (can change over time)
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Manages state for CounterScreen
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0; // Variable to keep track of counter

  // Method
  // Increases _counter by 1 every time button is pushed
  void _incrementCounter(){
    // setState tells Flutter to update the UI
    setState((){
      _counter++; // Increment counter when button is pressed
    });
  }

  // Rebuilds the UI whenever setState is called
  @override
  Widget build(BuildContext context){

    // Scaffold provides the basic structure 
    return Scaffold(

      // Top bar with a title
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.blueAccent,
      ),


      body: Center( // Everything in center of screen
        child: Column( // Displays widgets in vertical stack
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text( // Static text that does not change
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10), // Adds spacing
            Text(
              '$_counter',
              style: const TextStyle(fontSize:40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),

      // Button that triggers _incrementCounter()
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Button event
        tooltip: 'Increment',
        child: const Icon(Icons.add), // Shows + icon
      ),
    );
  }
}
