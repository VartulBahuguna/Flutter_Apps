import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quotes> quotes =[
    Quotes(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quotes(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quotes(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];

 // Widget quoteTemplate(xyz){
 //    return QuoteCard(quote: xyz);
 // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: quotes.map((quotes) => QuoteCard(
            quote: quotes,
        delete: () {
              setState(() {
                this.quotes.remove(quotes);
              });
        })).toList(),
      ),
    );
  }
}

