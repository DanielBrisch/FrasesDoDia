import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: _HomeStateful(),
  ));
}

class _HomeStateful extends StatefulWidget {
  const _HomeStateful({super.key});

  @override
  State<_HomeStateful> createState() => _HomeStatefulStateState();
}

class _HomeStatefulStateState extends State<_HomeStateful> {
  @override
  Widget build(BuildContext context) {
    var _titulo = "NuBank";
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Text("Conteudo Teste")
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurpleAccent,
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text("TESTE "),
                Text("TESTE "),
                Text("TESTE "),
              ],
            )
        ),
      ),
    );;
  }
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return;
  }
}
