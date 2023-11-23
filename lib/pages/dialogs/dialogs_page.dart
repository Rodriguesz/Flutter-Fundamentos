import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          /// Dialog completamente customizado
          /// a customização esta na classe DialogCustom()
          ElevatedButton(
              onPressed: () {
                showDialog(
                    // barrierDismissible: false, //? desabilita a opção de fechar o dialog quando clicar fora da tela
                    context: context,
                    builder: (contextDialog) {
                      return DialogCustom(context);
                    });
              },
              child: const Text('Dialog')),

          /// Um dialog mais simples e basico
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Simple Dialog'),
                        contentPadding: const EdgeInsets.all(10.0),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('TituloX'),
                          ),
                          TextButton(
                              onPressed: () {
                                return Navigator.of(context).pop();
                              },
                              child: const Text("Fechar Dialog"))
                        ],
                      );
                    });
              },
              child: const Text('SimpleDialog')),

          /// Um dialog de alerta
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      ///IDENTIFICANDO A PLATAFORMA
                      //? SE FOR IOS
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Deseja realmente salvar??'),
                              ),
                            ]),
                          ),
                          actions: [
                            TextButton(onPressed: () {}, child: const Text('Cancelar')),
                            TextButton(onPressed: () {}, child: const Text('Confirmar'))
                          ],
                        );
                        //? SE FOR ANDROID
                      } else {
                        return AlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Deseja realmente salvar??'),
                              ),
                            ]),
                          ),
                          actions: [
                            TextButton(onPressed: () {}, child: const Text('Cancelar')),
                            TextButton(onPressed: () {}, child: const Text('Confirmar'))
                          ],
                        );
                      }
                    });
              },
              child: const Text('Alert Dialog')),

          /// Dialog de hora do proprio SO
          ElevatedButton(
              onPressed: () async {
                final selectedTime =
                    await showTimePicker(context: context, initialTime: TimeOfDay.now());
                print('O horario selecionado foi $selectedTime');
              },
              child: const Text('Time Picker')),
          ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025));
                print('A data selecionada foi $selectedDate');
              },
              child: const Text('Date Picker')),
        ]),
      ),
    );
  }
}
