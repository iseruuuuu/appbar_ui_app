import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FittedBox Sample')),
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.blue,
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Placeholder(),
            ),
          ),
        ),
      ),
    );
  }
}
