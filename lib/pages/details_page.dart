import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map rates;
  const DetailsPage({required this.rates});
  @override
  Widget build(BuildContext context) {
    List _currencies = rates.keys.toList();
    List _exchangeRates = rates.values.toList();
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          itemCount: _currencies.length,
          itemBuilder: (context, index) {
            String _currency = _currencies[index].toString().toUpperCase();
            String _exchangeRate = _exchangeRates[index].toString();
            return ListTile(
                title: Text(
              "$_currency: $_exchangeRate",
              style: TextStyle(
                color: Colors.white,
              ),
            ));
          }),
    ));
  }
}
