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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  double sliderValue = 0.0;

  void onChanged(double value) {
    setState(() {
      this.sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text('Nilai aktif: ${sliderValue.round()}'),
            Slider(
              min: 0.0,
              max: 100.0,
              value: this.sliderValue,
              onChanged: (double value) {
                onChanged(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
