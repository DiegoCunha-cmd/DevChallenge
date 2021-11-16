import 'package:flutter/material.dart';

class HttpPage2 extends StatefulWidget {
  const HttpPage2({Key? key}) : super(key: key);

  @override
  _HttpPage2State createState() => _HttpPage2State();
}

//Página destinada ao item 2

class _HttpPage2State extends State<HttpPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Item 2"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(10)),
              buildQuoteCard(),
            ],
          ),
        ));
  }

  Widget buildCard() => Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              Text("Card title text"),
              Text("Card subtitle text"),
            ],
          ),
        ),
      );

  //Outra implementação para um builder de Cards
  Widget buildQuoteCard() => Card(
        child: Column(
          children: const [
            Text(
              "BlaBlaBla BlaBlaBlaBla BlaBla",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              "Eleanor Roosevelt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(10))
          ],
        ),
      );
}
