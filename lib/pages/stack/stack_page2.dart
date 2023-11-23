import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://burst.shopifycdn.com/photos/hiking-though-giants.jpg?width=925&format=pjpg&exif=1&iptc=1'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          color: Colors.white54,
        ),
        Positioned(
          bottom: 70,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 13,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Arvores da internet',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text(
                      'A imagem que encontrei na internet retrata um belo cenário de árvores majestosas. As árvores se erguem em direção ao céu, exibindo ramos e folhas vibrantes. Seus troncos robustos transmitem uma sensação de força e estabilidade. A imagem transmite tranquilidade e paz, como se as árvores fossem guardiãs silenciosas da natureza.'),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
