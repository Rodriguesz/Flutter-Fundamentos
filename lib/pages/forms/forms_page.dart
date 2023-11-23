import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  ///Uma GlobalKey é um tipo especial de chave globalmente única que permite identificar um widget em qualquer lugar da árvore de widgets.
  ///A GlobalKey permite que você acesse um widget de qualquer lugar do seu aplicativo.
  final formKey = GlobalKey<FormState>();
  final nameEC =
      TextEditingController(); //TextEditingController() serve para recuperar os valores do field
  String categoria = 'Categoria1';

  /// Método chamado quando a page for descartada
  /// Descarta os controladores pra eles não ficarem ocupando espaço na memória
  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                //?TextField() e TextFormField(): a diferença é que no formField conseguimos trabalhar com validação
                //! INICIO TextFormField()
                child: TextFormField(
                  controller: nameEC,
                  maxLines: null,

                  decoration: InputDecoration(
                    labelText: 'Nome completo',
                    //
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.red)),
                    labelStyle: const TextStyle(fontSize: 20, color: Colors.blueGrey),
                    isDense: true,
                  ),

                  /// vai validar somente depois da interação do usuario
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  //ignore: body_might_complete_normally_nullable
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      //?se o valor for nulo ou vazio, campo invalido, caso contrario, campo válido
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                //! FIM TextFormField()
              ),

              //! INICIO TextFormField() SENHA
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameEC,

                  decoration: InputDecoration(
                    labelText: 'Senha',
                    //
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.red)),
                    labelStyle: const TextStyle(fontSize: 20, color: Colors.blueGrey),
                    isDense: true,
                  ),
                  obscureText: true,

                  /// vai validar somente depois da interação do usuario
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  //ignore: body_might_complete_normally_nullable
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      //?se o valor for nulo ou vazio, campo invalido, caso contrario, campo válido
                      return 'Campo X não preenchido';
                    }
                  },
                ),
              ),
              //! FIM TextFormField() SENHA

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  value: categoria,
                  elevation: 16,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  isDense: true,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.green)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.red)),
                  ),
                  // ignore: body_might_complete_normally_nullable
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida';
                    }
                  },
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      categoria = newValue;
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Categoria1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria3',
                      child: Text('Categoria 3'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    //? se não for nulo, é valido
                    var formValid = formKey.currentState?.validate() ?? false;

                    var message = 'Formulário inválido';
                    if (formValid) {
                      message = 'Formulário válido (name: ${nameEC.text})';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                  },
                  child: const Text('Salvar'))
            ],
          ),
        ),
      ),
    );
  }
}
