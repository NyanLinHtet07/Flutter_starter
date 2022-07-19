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
      body: Column(children: [
        Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            child: Image.network(
              "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/rockcms/2022-06/220617-lightyear-mjf-1648-dd3fa6.jpg",
              loadingBuilder: (_, widget, progress) {
                if (progress == null) return widget;
                return CircularProgressIndicator();
              },
            ))
      ]),
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
