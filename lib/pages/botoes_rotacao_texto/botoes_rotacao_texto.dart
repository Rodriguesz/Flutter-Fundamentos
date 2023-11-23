import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                //!RotatedBox: Rotaciona um widget
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Leonardo Rodrigues'),
                  ),
                ),
                const Icon(Icons.ac_unit)
              ],
            ),
            //! -----BOTÕES-----

            //? BOTÃO DE TEXTO
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.red,
                  padding: const EdgeInsets.all(10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: const Size(50, 10)),
              child: const Text('Salvar'),
            ),

            //? BOTÃO DE ICONE
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
              iconSize: 70,
            ),

            //? BOTÃO ELEVADO
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shadowColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: const Size(120, 50)),
              child: const Text('Salvar'),
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.air),
              label: const Text('Modo avião'),
            ),

            const SizedBox(height: 10),

            ///Customização diferenciada do elevated button
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.blue),
                  // minimumSize: MaterialStateProperty.all(const Size(120, 50)),
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(150, 150);
                    } else if (states.contains(MaterialState.hovered)) {
                      // por algum motivo o hovored não está funcionando no meu emulador
                      return const Size(180, 180);
                    }
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  })),
              child: const Text('Salvar'),
            ),

            const SizedBox(
              height: 10,
            ),

            //? Botão simples que só ocupa o espaço dele
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),

            const SizedBox(
              height: 10,
            ),

            //? Botão para identificar diferentes tipos de ação
            GestureDetector(
              child: const Text('Gesture dector'),
              onTap: () => print("Gesture clicado"),
              onDoubleTap: () => print("Double tapado"),
              onVerticalDragStart: (_) => print('Start $_'),
            ),

            const SizedBox(
              height: 10,
            ),

            //? Montando o meu botão
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.blue,
                    Colors.green,
                  ]),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.red,
                    )
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Center(
                    child: Text(
                  "botão Salvar",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
