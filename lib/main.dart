import 'package:email_phone/email_flutter_mailer.dart';
import 'package:email_phone/phone.dart';
import 'package:email_phone/url_launcher.dart';
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
        //primarySwatch: Colors.lightGreen,
        primarySwatch: Colors.lightBlue,
        //primaryColor: Colors.blueGrey,
        primaryColor: Colors.blue,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (EmailSend()),
                        ),
                      );
                    },
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (PhoneCaller()),
                        ),
                      );
                    },
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (UrlLauncherApp()),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "URL Launcher",
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
}
