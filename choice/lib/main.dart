import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        primarySwatch: Colors.orange,
        backgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userInput = "No Input Yet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Enter Input here'),
              onChanged: (value) {
                userInput = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (userInput.isEmpty) {
                  userInput = 'No Input yet';
                }
                setState(() {});
              },
              child: Text('Submit'),
            ),
            Text('Result: $userInput'),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('assets/hng.png'),
                  height: 70,
                ),
                Text('https://zuri.team')
              ],
            )
          ],
        ),
      ),
    );
  }
}
