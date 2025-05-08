import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  const QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.green[900],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[100],
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[200]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

