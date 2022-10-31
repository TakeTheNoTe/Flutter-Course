import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) {
            return FirstScreen();
          },
          '/second': (BuildContext context) {
            return SecondScreen();
          },
        });
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Buka Layar 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
          child: Text('Kembali ke Layar 1'),
        ),
      ),
    );
  }
}
