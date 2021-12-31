import 'package:flutter/material.dart';
import 'package:kependudukan/screen/data_kependudukan.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kependudukan',
      theme: ThemeData(),
      home: const DataKependudukan(),
    );
  }
}
