import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 6 Assignment',
      home: HomeScreen(),
=======
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
>>>>>>> ee4c5fafe226dd61a89efefad5751728f5c369ba
    );
  }
}

<<<<<<< HEAD
class HomeScreen extends StatelessWidget {
=======
class HomePage extends StatelessWidget {
>>>>>>> ee4c5fafe226dd61a89efefad5751728f5c369ba
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Week 6 Assignment'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Styled Container
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Welcome to the Week 6 Assignment!',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        print('Button Clicked!');
                      },
                      child: Text('Click Me!'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Image Widget
              Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
              SizedBox(height: 40),
              // Login Layout
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle login
                          },
                          child: Text('Login'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle registration
                          },
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
=======
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
>>>>>>> ee4c5fafe226dd61a89efefad5751728f5c369ba
        ),
      ),
    );
  }
}
