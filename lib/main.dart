import 'package:flutter/material.dart';
import 'package:hiraya/constants.dart';
import 'ui/Home.dart';
import 'package:firebase_core/firebase_core.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  runApp(Hiraya());
}

class Hiraya extends StatefulWidget {
  const Hiraya({Key? key}) : super(key: key);

  @override
  _HirayaState createState() => _HirayaState();
}

class _HirayaState extends State<Hiraya> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: appname,
    );
  }
}
