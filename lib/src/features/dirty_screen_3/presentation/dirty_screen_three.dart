import 'package:flutter/material.dart';

class DirtyScreenThree extends StatelessWidget {
  final String description;
  const DirtyScreenThree({super.key, required this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #3"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container_Widget_three(
              description: 'Alert 1',
            ),
            Container_Widget_three(description: 'Alert 2'),
            Container_Widget_three(description: 'Alert 3'),
            Container_Widget_three(description: 'Alert 4')
          ],
        ),
      ),
    );
  }
}

class Container_Widget_three extends StatelessWidget {
  final String description;
  const Container_Widget_three({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.orangeAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.warning),
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
