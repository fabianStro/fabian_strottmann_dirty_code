import 'package:flutter/material.dart';

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #1"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Comtainer_Wrap(
              description: 'Box 1',
            ),
            Comtainer_Wrap(description: 'Box 2'),
            Comtainer_Wrap(description: 'Box 3'),
            Comtainer_Wrap(description: 'Box 4'),
          ],
        ),
      ),
    );
  }
}

class Comtainer_Wrap extends StatelessWidget {
  final String description;
  const Comtainer_Wrap({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report),
          const SizedBox(
            width: 8,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
