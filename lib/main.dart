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
        body: const Center(
            child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          maxLines: 2,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              letterSpacing: 5,
              wordSpacing: 6,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontFamily: 'ALbertSans'),
        )),
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
