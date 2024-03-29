import 'package:email_phone/email_flutter_mailer.dart';
import 'package:email_phone/phone.dart';
import 'package:email_phone/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(new EmailPhone());
}

class EmailPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return new MaterialApp(
    return new CupertinoApp(
      title: 'Auto Email and Phone',
      /*theme: new ThemeData(
        //primarySwatch: Colors.lightGreen,
        primarySwatch: Colors.lightBlue,
        //primaryColor: Colors.blueGrey,
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        canvasColor: Colors.white,
      ),*/
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final edtController = TextEditingController();
  final fNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Email and Phone",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
      ),
      /*appBar: AppBar(
        title: Text(
          "Email and Phone",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
      ),*/
      //body: Center(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SelectableText(
                    "Selectable Text",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0d5aa7),
                  backgroundBlendMode: BlendMode.srcOver,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: EditableText(
                    controller: edtController,
                    focusNode: fNode,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                    cursorColor: Colors.blue,
                    backgroundCursorColor: Colors.green),
              ),
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
                        //style: GoogleFonts.oswald(textStyle: Theme.of(context).textTheme.headline4, fontSize: 22),
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal, fontSize: 22),
                        //style: TextStyle(
                        //    fontSize: 22.0,
                        //    fontWeight: FontWeight.w200,
                        //    fontFamily: "Roboto"),
                      ),
                    )),
              ),
            ]),
      ),
    );
  }
}
