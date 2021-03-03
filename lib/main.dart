import 'package:flutter/material.dart';

void main() {
  runApp(new EmailPhone());
}

class EmailPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Auto Email and Phone',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blueAccent,
        canvasColor: Colors.white,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email-Phone'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: buttonPressed,
                  //color: const Color(0xFFe0e0e0),
                  child: Text(
                    "E-mail",
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: buttonPressed,
                  //color: const Color(0xFFe0e0e0),
                  child: Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  void buttonPressed() {}
}
