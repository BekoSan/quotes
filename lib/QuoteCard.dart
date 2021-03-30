import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote _quote;
  final Function delete;
  QuoteCard(this._quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: buildQuote(_quote),
      ),
    );
  }

  Widget buildQuote(quote) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          quote.quoteText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        )),
        SizedBox(
          height: 10.0,
        ),
        Center(
            child: Text(
          quote.author,
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Center(
          child: FlatButton.icon(
            label: Text('delete quote'),
            icon: Icon(Icons.delete),
            onPressed: delete,
          ),
        )
      ],
    );
  }
}
