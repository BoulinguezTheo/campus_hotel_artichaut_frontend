import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

class BillCard extends StatefulWidget {
  final String title;
  final String numberOfDays;
  final String numberOfPersons;
  final String totalPrice;

  BillCard({
    required this.title,
    required this.numberOfDays,
    required this.numberOfPersons,
    required this.totalPrice,
  });

  @override
  State<BillCard> createState() => _BillCardState();
}

class _BillCardState extends State<BillCard> {
  late String selectedValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 1.5.vh),
      child: Padding(
        padding: EdgeInsets.all(1.5.vh),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Nombre de jours: ${widget.numberOfDays}',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Nombre de personnes: ${widget.numberOfPersons}',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${widget.totalPrice} €',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
