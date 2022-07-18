import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nyan First Apk'),
          leading: const FlutterLogo(),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Setting')));
                },
                icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          ],
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          elevation: 30,
          shadowColor: Colors.green,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
        ),
        body: Container(
          color: Colors.red,
          // width: 600,
          // height: 200,
          margin: const EdgeInsets.all(20),
          child: Text(
            'container',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          alignment: Alignment.center,
          constraints: const BoxConstraints(minWidth: 300, maxHeight: 400),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            print('Click');
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
