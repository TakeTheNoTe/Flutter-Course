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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState? form = this.formKey.currentState;

    SnackBar message = SnackBar(
      content: Text('Proses validasi sukses...'),
    );

    if (form != null) {
      if (form.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text('Demo Form'),
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Nama',
                  ),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value.toString().isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'No. HP',
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (String? value) {
                    if (value.toString().isEmpty) {
                      return 'No. HP tidak boleh kosong';
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value.toString().isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                  },
                ),
                Container(height: 10.0),
                ElevatedButton(
                  child: Text('Validasi Data'),
                  onPressed: validateInput,
                )
              ],
            ),
          ),
        ));
  }
}
