import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),

      //?tbm cria uma rolagem na tela
      //?carrega apenas os itens que estão aparecendo na tela ou está proximo de mostrar na tela
      // body: ListView.builder(
      //     itemCount: 1000,
      //     itemBuilder: (context, index) {
      //       print('Carregando o indice $index');
      //       return ListTile(
      //         title: Text('Indice $index'),
      //         subtitle: const Text('Flutter é bala'),
      //         leading: const CircleAvatar(),
      //       );
      //     }),

      //? a diferença pro .builder é que esse possui o metodo separatorBuilder para separar os itens da lista
      body: ListView.separated(
          itemCount: 1000,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
              thickness: 2, //? tamanho da linha
            );
          },
          itemBuilder: (context, index) {
            print('Carregando o indice $index');
            return ListTile(
              title: Text('Indice $index'),
              subtitle: const Text('Flutter é bala'),
              leading: const CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage(
                    'https://static1-br.millenium.gg/entity_articles/1/67/21/@/94972-gnar-caipira-custa-520-rp-article_image_d-1.jpg'),
              ),
              trailing: const CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            );
          }),
    );
  }
}
