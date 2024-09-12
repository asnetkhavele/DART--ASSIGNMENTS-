import 'package:flutter/material.dart';

void main() {
  runApp(AgricultureApp());
}

class AgricultureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agriculture App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agriculture App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Agriculture App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Print a message to the console when the button is pressed
                print('ElevatedButton clicked!');
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://images.stockcake.com/public/5/d/1/5d1fbbb2-631c-451f-83c7-325b77d606c6_large/colorful-vegetable-harvest-stockcake.jpg', 
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
