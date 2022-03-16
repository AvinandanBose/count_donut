import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home_new(),
    );
  }
}

class _Home_new extends StatefulWidget {
  const _Home_new({Key? key}) : super(key: key);
  @override
  State<_Home_new> createState() => _State();
}

class _State extends State<_Home_new> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'Donut Counter',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Donut Count : $count',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 22.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
      },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
