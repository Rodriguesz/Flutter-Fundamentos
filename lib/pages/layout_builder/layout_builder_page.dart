import 'package:flutter/material.dart';

///BASICAMENTE FAZ A MESMA COISA QUE O MEDIAQUERY

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout builder'),
      ),
      body: Center(child: LayoutBuilder(builder: (context, constraints) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: Colors.red,
            width: constraints.maxWidth * 0.5,
            height: constraints.maxHeight * 0.5,
          ),
          Container(
            color: Colors.blue,
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.5,
          )
        ]);
      })),
    );
  }
}
