import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Multiplataforma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _message = "¡Hola desde Flutter!";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _message = "Has presionado el botón $_counter veces.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mi App Multiplataforma'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Presióname'),
            ),
          ],
        ),
      ),
    );
  }
}

