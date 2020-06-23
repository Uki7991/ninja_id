import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
  ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wild', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Tilek Kubanov', text: 'The truth is rarely pure and never simple'),
    Quote(author: 'Another man', text: 'I have nothing to declare except my genius'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} ${quote.author}')).toList()
      ),
    );
  }
}
