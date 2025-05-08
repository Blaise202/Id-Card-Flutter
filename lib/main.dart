import 'package:flutter/material.dart';

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

  List<String> quotes = [
    'Try and fail but never fail to try',
    'The only impossible way is the one you do not choose',
    'Just deliver the best you can',
    'Be your self! Everyone is already taken'
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 5,
            children: quotes.map((quote) =>
              Text(
                quote,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ).toList(),
          ),
        ),
      )
    );
  }
}
