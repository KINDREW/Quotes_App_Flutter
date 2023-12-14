import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'quote_card.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> Quotes = [
    Quote(text: "Be yourself; everyone else is already taken", author: "Charles Asamoah"),
    Quote(text: "I have nothing to declare except my genius", author: "Quincy Tawaiah"),
  Quote(text:  'The truth is rarely pure and never simple', author: "Samuel Abakah"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation:0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                Quotes.remove(quote);

              });
            },
        )).toList(),
      )
    );
  }
}
