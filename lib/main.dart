import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:'Try and fail but never fail to try', author: 'Blaise'),
    Quote(text: 'The only impossible way is the one you do not choose', author: 'Blaise'),
    Quote(text: 'Just deliver the best you can', author: 'Blaise'),
    Quote(text: 'Be yourself! Everyone else is already taken', author: 'Blaise')
  ];

  Widget quoteTemplate(quote){
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

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Title(
          color: Colors.redAccent,
          child: Text(
            'Life Changing Quotes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          spacing: 5,
          children: quotes.map((quote) =>
            quoteTemplate(quote)
          ).toList(),
        ),
      )
    );
  }
}
