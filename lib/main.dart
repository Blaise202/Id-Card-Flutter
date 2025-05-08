import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(text: 'Be yourself! Everyone else is already taken', author: 'Oscar Wilde'),
  ];

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
            QuoteCard(quote: quote)
          ).toList(),
        ),
      )
    );
  }
}
