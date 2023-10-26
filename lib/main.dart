import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: HomeStateful(),
  ));
}

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
        title: Text("NuBank"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_texto == "PRIMEIRO") {
                    _texto = "Curso Flutter";
                  } else {
                    _texto = "PRIMEIRO";
                  }
                });
              },
              child: Text("Clique aqui"),
              style: ElevatedButton.styleFrom(primary: Colors.black26),
            ),
            Text("Nome: $_texto"),
          ],
        ),
      ),
    );
  }
}
