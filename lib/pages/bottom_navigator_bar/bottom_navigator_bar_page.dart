import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigato bar'),
      ),

      /// UMA BARRA QUE FICA NA PARTE DE BAIXO DA TELA
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indice,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          items: const [
            /// PRECISA DE NO MÍNIMO 2 ITENS
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Item 2')
          ]),

      /// "EMPILHA" OS WIDGETS
      body: IndexedStack(
        index: indice,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
