import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context)
      : super(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Column(
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
              ),
            ));
}
