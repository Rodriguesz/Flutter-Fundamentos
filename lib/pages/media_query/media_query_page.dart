import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context); //Pega o tamanho e largura da tela

    // print('Largura ${mediaQuery.size.width}');
    // print('Altura ${mediaQuery.size.height}');
    // print('Orientacao ${mediaQuery.orientation}');
    // print('Padding TOP ${mediaQuery.padding.top}');
    // print('Tamanho AppBarDefault $kToolbarHeight');

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: Colors.red,
            width: mediaQuery.size.width * 0.5,
            height: heightBody * 0.5,
          ),
          Container(
            color: Colors.blue,
            width: mediaQuery.size.width,
            height: heightBody * 0.5,
          )
        ]),
      ),
    );
  }
}
