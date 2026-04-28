import 'package:flutter/material.dart'; // biblioteca de design do Flutter
import 'package:http/http.dart'
    as http; // biblioteca que permite realizar as requisições http
import 'dart:convert'; // biblioteca que permite fazer os parses para tratamento

// classe Login

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  // variavel para criar a senha
  bool exibir = false;

  // função para realizar login
  _verificaLogin() async {
    bool encuser = false;
    // url com a api dos usuários
    String url = '10.109.83.1:3000/usarios';
    // Cria a variavel para armazenar a respota da api
    http.Response resposta = await http.get(Uri.parse(url));

    print(resposta.statusCode);

    // Cria uma variavél para armazenar os dados

    var dados = json.decode(resposta.body) as List;
    
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
