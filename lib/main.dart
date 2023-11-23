import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/Material_banner/material_banner_page.dart';
import 'package:flutter_fundamentos/pages/botoes_rotacao_texto/botoes_rotacao_texto.dart';
import 'package:flutter_fundamentos/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_fundamentos/pages/cidades/cidades_page.dart';
import 'package:flutter_fundamentos/pages/colors/colors_page.dart';
import 'package:flutter_fundamentos/pages/container/container_page.dart';
import 'package:flutter_fundamentos/pages/dialogs/dialogs_page.dart';
import 'package:flutter_fundamentos/pages/forms/forms_page.dart';
import 'package:flutter_fundamentos/pages/home/home_page.dart';
import 'package:flutter_fundamentos/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_fundamentos/pages/media_query/media_query_page.dart';
import 'package:flutter_fundamentos/pages/stack/stack_page.dart';
import 'package:flutter_fundamentos/pages/stack/stack_page2.dart';
import 'pages/rows_columns/rows_column_page.dart';
import 'pages/scrolls/listview_page.dart';
import 'pages/scrolls/singlechildscrollview_page.dart';
import 'pages/snackbar/snackbar_page.dart';

//!FUNÇÃO DE STAR DA APLICAÇÃO //MyApp(): WIDGET INICIAL

//?DevicePreview: package para testar a aplicação em diferentes dispositivos
void main() => runApp(
      DevicePreview(
        //!kReleaseMode: função que indica se o app está em produção
        //enabled: !kReleaseMode, //? no caso, se não estiver em produção, ele fica ativado
        enabled: false,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

/**O parâmetro "context" é usado principalmente para acessar informações ou executar 
   ações específicas relacionadas ao contexto, como navegar para outra tela, obter traduções, 
   obter dados do tema atual ou até mesmo obter o tamanho da tela disponível.

Em resumo, o "context" é uma referência ao contexto atual da interface do usuário no Flutter e 
é usado para acessar recursos e serviços relevantes para a construção e manipulação de elementos da 
interface do usuário. */ ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.lightBlueAccent,
            primarySwatch: Colors.cyan,
            fontFamily: 'Roboto',
            snackBarTheme: const SnackBarThemeData(
              backgroundColor: Colors.blueGrey,
              actionTextColor: Colors.black,
              contentTextStyle: TextStyle(color: Colors.deepOrange),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green))),
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routes: {
          '/': (_) => const HomePage(),
          '/container': (_) => const ContainerPage(),
          '/rows_columns': (_) => const RowsColumnPage(),
          '/media_query': (_) => const MediaQueryPage(),
          '/layout_builder': (_) => const LayoutBuilderPage(),
          '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
          '/singlechildscrollview': (_) => const SinglechildscrollviewPage(),
          '/listview': (_) => const ListviewPage(),
          '/dialogs': (_) => const DialogsPage(),
          '/snackbar': (_) => const SnackbarPage(),
          '/forms': (_) => const FormsPage(),
          '/cidades': (_) => const CidadesPage(),
          '/stack': (_) => const StackPage(),
          '/stack2': (_) => const StackPage2(),
          '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
          '/colors': (_) => const ColorsPage(),
          '/materialBanner': (_) => const MaterialBannerPage()
        });
  }
}
