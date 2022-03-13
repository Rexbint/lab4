import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyBody());
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<String> _array = [];
  num twoPow = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Список элементов',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Список элементов'),
        ),
        body: ListView.builder(itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final int index = i ~/ 2;
          twoPow = pow(2, index);
          return ListTile(title: Text('2^$index = $twoPow'));
        }),
      ),
    );
  }
}