import 'package:flutter/material.dart';

enum PopUpMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layotBuilder,
  botoesRotacaoTexto,
  singlechildscrollview,
  listview,
  dialogs,
  snackbar,
  forms,
  cidades,
  stack,
  stack2,
  bNavigatorBar,
  colors,
  materialBanner
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopUpMenuPages>(
              icon: const Icon(Icons.add_task),
              onSelected: (PopUpMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopUpMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopUpMenuPages.rowsColumns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopUpMenuPages.mediaQuery:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopUpMenuPages.layotBuilder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopUpMenuPages.botoesRotacaoTexto:
                    Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                    break;
                  case PopUpMenuPages.singlechildscrollview:
                    Navigator.of(context).pushNamed('/singlechildscrollview');
                    break;
                  case PopUpMenuPages.listview:
                    Navigator.of(context).pushNamed('/listview');
                    break;
                  case PopUpMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogs');
                    break;
                  case PopUpMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackbar');
                    break;
                  case PopUpMenuPages.forms:
                    Navigator.of(context).pushNamed('/forms');
                    break;
                  case PopUpMenuPages.cidades:
                    Navigator.of(context).pushNamed('/cidades');
                    break;
                  case PopUpMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopUpMenuPages.stack2:
                    Navigator.of(context).pushNamed('/stack2');
                    break;
                  case PopUpMenuPages.bNavigatorBar:
                    Navigator.of(context).pushNamed('/bottom_navigator_bar');
                    break;
                  case PopUpMenuPages.colors:
                    Navigator.of(context).pushNamed('/colors');
                    break;
                  case PopUpMenuPages.materialBanner:
                    Navigator.of(context).pushNamed('/materialBanner');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return const <PopupMenuItem<PopUpMenuPages>>[
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.rowsColumns,
                    child: Text('Rows & columns'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.mediaQuery,
                    child: Text('Media query'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.layotBuilder,
                    child: Text('Layout builder'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.botoesRotacaoTexto,
                    child: Text('Botões e rotação de texto'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.singlechildscrollview,
                    child: Text('Scroll SingleChild'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.listview,
                    child: Text('ListView'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.snackbar,
                    child: Text('Snackbar'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.forms,
                    child: Text('Formularios'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.cidades,
                    child: Text('Cidades'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.stack,
                    child: Text('Stack'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.stack2,
                    child: Text('Stack 2'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.bNavigatorBar,
                    child: Text('Bottom navigator bar'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.colors,
                    child: Text('Colors'),
                  ),
                  PopupMenuItem<PopUpMenuPages>(
                    value: PopUpMenuPages.materialBanner,
                    child: Text('Material Banner'),
                  ),
                ];
              })
        ],
      ),

      ///AULA DE TEMA
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.blueGrey),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Botão X'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
