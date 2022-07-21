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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc),
          elevation: 0.0,
          title: const Text("Start Ui"),
        ),
        body: Column(children: [
          Stack(
            //alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 400,
                color: Color.fromARGB(255, 45, 74, 97),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/fulfil.png'),
                ),
              ),
              const Positioned(
                  top: 0,
                  right: 30,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              Positioned(
                  top: 250,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: const [
                      Text(
                        "Aung Kyaw \n",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Yangon, Myanmar",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  )),
              Positioned(
                  bottom: -40,
                  left: 20,
                  right: 20,
                  child: Card(
                    elevation: 8.0,
                    child: cardRow(),
                  ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Card(
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/fulfil.png'),
                ),
                title: Text("Elezebart"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/fulfil.png'),
                ),
                title: Text("Elezebart"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/fulfil.png'),
                ),
                title: Text("Elezebart"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ]),
          )
        ]));
  }
}

Widget cardRow() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      cardItem('Photo', '500'),
      Container(
        height: 40,
        width: 1,
        color: Colors.black,
      ),
      cardItem('Follower', '500'),
      Container(
        height: 40,
        width: 1,
        color: Colors.black,
      ),
      cardItem('Following', '500')
    ],
  );
}

Widget cardItem(String title, String message) {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Text(title),
      SizedBox(
        height: 10,
      ),
      Text(
        message,
        style: TextStyle(fontSize: 25),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: () {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('A SnackBar has been shown.'),
//           ),
//         );
//       },
//       child: const Icon(Icons.settings),
//     );
//   }
// }
