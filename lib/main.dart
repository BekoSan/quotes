import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';
import 'package:quotes/QuoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote('Big shots are only littel shots , who keep shooting',
        'Cristopher morley'),
    Quote(
        'It is not where you start , but how high you aim that matters for success',
        'Nelson Mandela'),
    Quote('Think diferent', 'Steve Jobs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(quote, () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
