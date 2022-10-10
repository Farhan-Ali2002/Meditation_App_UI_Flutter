import 'package:flutter/material.dart';

class MyRects extends StatelessWidget {
  final String child;
  const MyRects({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: const Alignment(-0.5, 0.0),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(255, 4, 31, 90),
          ),
          child: SizedBox(
            width: 140,
            child: Text(
              child,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
