import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Its Me'),
        leading: const FlutterLogo(),
        actions: [
          const MyStatelessWidget(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
        ],
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        elevation: 30,
        shadowColor: Colors.green,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return const Text("loream");
        },
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('A SnackBar has been shown.'),
          ),
        );
      },
      child: const Icon(Icons.settings),
    );
  }
}
