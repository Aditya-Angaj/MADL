import 'package:flutter/material.dart';

void main() {
  runApp(CommonWidgetsDemo());
}

class CommonWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common Widgets Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Common Widgets'),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Search button pressed
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Text widget
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Image widget
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef35f615fb1b1f4e1cc22cba3a5bdf16346d39c41a4e54f8823d2e8caa3.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Row with icons and text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.blue, size: 30),
                      SizedBox(height: 5),
                      Text('Call'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.message, color: Colors.green, size: 30),
                      SizedBox(height: 5),
                      Text('Message'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.orange, size: 30),
                      SizedBox(height: 5),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // TextField
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),

              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  // Button pressed action
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
