import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  final List child;
  const MyContainers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // alignment: const Alignment(0.0, 0.0),
        height: 130,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              child[1],
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              child[0],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(255, 4, 31, 90),
        ),
      ),
    );
  }
}
