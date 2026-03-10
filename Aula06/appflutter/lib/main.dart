import 'package:flutter/material.dart';
// função principal do app
void main() {

  // função que chama a classe que constroi o app
  runApp(TelaHome());
}

class TelaHome extends StatelessWidget {
  // Construtor Tela Home
  const TelaHome({super.key});

  // Polimorfismo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Flutter Aula 06'),
        ),
        body: TelaApp(),


      ),
    );
  }

}
  // cria a tela App do tipo stateful

class TelaApp extends StatefulWidget {
  // cria o construtor
  const TelaApp({super.key});

  // Polimorfismo
  @override
  // Metodo para construir a tela do App 
  State<TelaApp> createState() => _TelaAppState();
}

class _TelaAppState extends State<TelaApp> {

  // Polimorfismo
  @override
  // Metodo para construir a tela do App
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container
        (height: 100,
         width: 200,
        color: Colors.blue,
        ),

      ],
    );
  }
}