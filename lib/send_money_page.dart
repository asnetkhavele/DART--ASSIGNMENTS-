import 'package:flutter/material.dart';
import 'dashboard_page.dart'; // Make sure to import the DashboardPage

class SendMoneyPage extends StatefulWidget {
  @override
  _SendMoneyPageState createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  final _formKey = GlobalKey<FormState>();
  String? recipientName;
  double? amount;
  String? paymentMethod;
  bool isFavorite = false;
  bool _isSuccessMessageVisible = false;

  final List<String> paymentMethods = ['Credit Card', 'PayPal', 'Bank Transfer'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Send Money')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Recipient Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a recipient name';
                  }
                  return null;
                },
                onSaved: (value) => recipientName = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || double.tryParse(value) == null || double.parse(value) <= 0) {
                    return 'Please enter a valid positive amount';
                  }
                  return null;
                },
                onSaved: (value) => amount = double.tryParse(value!),
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Payment Method'),
                items: paymentMethods.map((String method) {
                  return DropdownMenuItem<String>(
                    value: method,
                    child: Text(method),
                  );
                }).toList(),
                onChanged: (value) => paymentMethod = value,
              ),
              SwitchListTile(
                title: Text('Mark as Favorite'),
                value: isFavorite,
                onChanged: (value) {
                  setState(() {
                    isFavorite = value;
                  });
                },
              ),
              ReusableButton(
                text: 'Send Money',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    showSuccessMessage();

                    // Navigate to Dashboard with custom transition
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => DashboardPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ));
                  }
                },
              ),
              AnimatedOpacity(
                opacity: _isSuccessMessageVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Transaction Successful!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSuccessMessage() {
    setState(() {
      _isSuccessMessageVisible = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isSuccessMessageVisible = false;
      });
    });
  }
}

class ReusableButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ReusableButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
