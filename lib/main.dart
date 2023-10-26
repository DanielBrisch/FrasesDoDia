import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: HomeStateful(),
  ));
}

T getItemAleatorio<T>(List<T> lista) {
  var rng = Random();
  return lista[rng.nextInt(lista.length)];
}

final List<String> frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
];

String fraseAtual = "Seja Bem Vindo(a)!!";

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = "PRIMEIRO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset('assets/img/logo.png')), // Image
            SizedBox(height: 40),
            Center(
              child: Container(
                width: 140,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      getItemAleatorio(frases);
                    });
                  },
                  child: Text("Clique aqui"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("Nome: $_texto"),
          ],
        ),
      ),
    );
  }
}
