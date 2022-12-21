import 'package:flutter/material.dart';

void main() {
  runApp(const AntiDepresso());
}

class AntiDepresso extends StatelessWidget {
  const AntiDepresso({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AntiDepresso',
      theme: ThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.purple,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            'AntiDepresso',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('Hello World'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Icon(Icons.psychology),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        fixedColor: Colors.white,
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
