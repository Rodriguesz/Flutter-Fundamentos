import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackbar = SnackBar(content: Text('Qualquer mensagem'));

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                    content: const Text('Qualquer mensagem'),
                    action: SnackBarAction(label: 'Desfazer', onPressed: () {}));

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                // ScaffoldMessenger.of(context).clearSnackBars();
              },
              child: const Text('Action Snackbar'),
            )
          ],
        ),
      ),
    );
  }
}
