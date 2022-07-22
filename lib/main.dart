import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _information = "";
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();

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
        body: Column(
          children: [
            TextField(
              controller: _name,
            ),
            TextField(
              controller: _age,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _information = "Name is ${_name.text} Age is ${_age.text}";
                  });
                },
                child: Text('Save')),
            Text(
              "Information is ${_information} ",
              style: TextStyle(fontSize: 30),
            )
          ],
        ));
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
