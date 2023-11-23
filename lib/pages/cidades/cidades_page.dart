import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  ///uma lista do tipo Cidade (é uma lista de cidades com nome e estado)
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    ///faz a leitura do arquivo que está no assets (como string)
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      /// transforma essa string em uma lista
      var cidadeList = json.decode(cidadesJson);

      /// varre toda essa lista e transforma ela em uma lista de cidades
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cidades'),
        ),
        body: ListView.builder(
            itemCount: cidades.length,
            itemBuilder: (context, index) {
              var cidade = cidades[index];
              return ListTile(
                title: Text(cidade.cidade),
                subtitle: Text(cidade.estado),
              );
            }));
  }
}
