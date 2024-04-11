import 'package:flutter/material.dart';

class Edit_Payment extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<Edit_Payment> {
  String _paymentMethod = 'VISA';
  String _cardNumber = '';
  String _cardHolderName = '';
  String _expirationDate = '';
  String _cvv = '';

  final _paymentMethods = ['VISA', 'MasterCard', 'American Express'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose payment method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _paymentMethod,
              onChanged: (value) {
                setState(() {
                  _paymentMethod = value!;
                });
              },
              items: _paymentMethods.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _cardNumber = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Card number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                setState(() {
                  _cardHolderName = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Card holder name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _expirationDate = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Expiration date',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _cvv = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}