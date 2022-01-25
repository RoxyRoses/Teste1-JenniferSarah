import 'package:flutter/services.dart';
import 'Metodo.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste 1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Teste 1 - Jennifer Sarah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controladorTxtNumero = TextEditingController();
  var resultado = "";
  final calculo = Calcular();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Seleção de Desenvolvedor de Software - Escribo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Teste Técnico 01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Descrição',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Implemente uma função que receba um número inteiro positivo e retorne o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado',
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Exemplos',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    ' Caso sua função receba o inteiro 10, ela deve retornar 23, resultante do somatório dos números 3, 5, 6 e 9 que são menores que 10. - Caso sua função receba o inteiro 11, ela deve retornar 33, resultante do somatório dos números 3, 5, 6, 9 e 10 que são menores que 11.',
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Instruções',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sua função deve ser implementada em Dart, PHP ou em Javascript. - Sua implementação deve estar em um repositório público no Github. - Escreva um README no seu repositório com as instruções de como rodar o seu projeto e como podemos testá-lo.- Envie sua resposta para o email jobs@escribo.com com o link do repositório.',
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            MaterialButton(
              child: const Text(
                "Iniciar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
