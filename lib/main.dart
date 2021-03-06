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
        title: Text(
          "Email and Phone",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
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
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "E-mail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: OutlinedButton(
                    onPressed: buttonPressed,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: OutlinedButton(
                    onPressed: _showSimpleDialog,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "SimpleDialog",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: OutlinedButton(
                    onPressed: _showMyDialog,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "AlertDialog",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                    )),
              ),
            ]),
      ),
    );
  }

  Future<void> _showSimpleDialog() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('SimpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
                child: const Text('Yes.'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'No');
                },
                child: const Text('No.'),
              ),
            ],
          );
        });
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void buttonPressed() {}
}
