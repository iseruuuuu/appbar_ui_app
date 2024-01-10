import 'package:appbar_ui_app/fiitedBox/fitted_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      home: FittedBoxExample(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NextScreen(),
              ),
            );
          },
          child: const Text('次の画面に遷移するよ'),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.grey.shade300,
                child: Image.network(
                  'https://www.gamespark.jp/imgs/zoom/685030.png',
                  fit: BoxFit.cover,
                ),
              ),
              AppBar(backgroundColor: Colors.transparent),
            ],
          ),

          //TODO 簡単なデザインをつける。
          const Text('Apple Grass'),
          const Icon(Icons.add),
          const Icon(Icons.add),
          const Icon(Icons.add),
          const Icon(Icons.add),

          TextField(
            autocorrect: false,
          ),

          Spacer(),
          ColoredBox(
            color: Colors.blue,
            child: Text('hello'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
