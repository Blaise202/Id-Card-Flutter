import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;

  // const QuoteCard({Key? key, required this.quote, required this.delete}) : super(key: key);
  const QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    quote.author,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900]
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: delete,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  label: Text(
                    'Delete',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  icon: Icon(
                    Icons.delete,
                    size: 17,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

