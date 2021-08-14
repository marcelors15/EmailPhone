import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PhoneCaller extends StatefulWidget {
  @override
  _PhoneCallerState createState() => new _PhoneCallerState();
}

class _PhoneCallerState extends State<PhoneCaller> {
  TextEditingController _numberCtrl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    //_numberCtrl.text = "085921191121";
    _numberCtrl.text = "5524993273393";
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            )
          ],
        ),
        body: new Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _numberCtrl,
              decoration: InputDecoration(labelText: "Phone Number"),
              keyboardType: TextInputType.phone,
            ),
          ),
          ElevatedButton(
            child: Text("Test Call"),
            onPressed: () async {
              FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
            },
          )
        ]),
      ),
    );
  }
}
