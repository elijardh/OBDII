import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:obd2_plugin/obd2_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType()!;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  var obd2 = Obd2Plugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OBDII Plugin Test",
      locale: const Locale.fromSubtags(languageCode: 'en'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OBDII Plugin Test'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}

