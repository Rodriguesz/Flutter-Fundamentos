import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.blue.withOpacity(0.5);
    // const cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = const Color(0xFF178453).withOpacity(0.5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Container(
        width: 400,
        height: 400,
        color: cor,
      ),
    );
  }
}
