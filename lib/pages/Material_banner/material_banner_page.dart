import 'package:flutter/material.dart';

//? parecido com a snackbar
//? a diferença é que a mensagem aparece na parte de cima da tela
class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialbanner = MaterialBanner(
                  content: const Text('Qualquer mensagem'),

                  ///é obrigatório ter uma action
                  actions: [
                    TextButton(
                        onPressed: () {
                          /// Se não tiver isso, o banner não some
                          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                        },
                        child: const Text('Cancelar'))
                  ],
                );

                ScaffoldMessenger.of(context).showMaterialBanner(materialbanner);

                ///UMA FORMA DE FAZER ELE SUMIR SOZINHO
                Future.delayed(const Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: const Text('Simple Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
