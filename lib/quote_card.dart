import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  const QuoteCard(this.quote, this.delete, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: const TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 77, 76, 76)),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: const Text('delete'),
            )
          ],
        ),
      ),
    );
  }
}
