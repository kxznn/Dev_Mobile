import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const TelaBit());
}

class TelaBit extends StatelessWidget {
  const TelaBit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bitcoin App',
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController valorController = TextEditingController();

  double valorBRL = 0;
  double valorUSD = 0;
  double valorEUR = 0;

  String resultado = '';

  String origem = 'Real';
  String destino = 'Dolar';

  // Buscar valores do bitcoin
  Future Bitcoinsearch() async {

    String url = 'https://blockchain.info/ticker';

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      var dados = json.decode(response.body);

      setState(() {

        valorBRL = dados['BRL']['buy'];
        valorUSD = dados['USD']['buy'];
        valorEUR = dados['EUR']['buy'];

      });
    }
  }

  // Converter moedas
  void convert() {

    if (valorController.text.isEmpty) {
      return;
    }

    double valor = double.parse(valorController.text);

    // Converter para bitcoin
    if (origem == 'Real') {

      valor = valor / valorBRL;

    } else if (origem == 'Dolar') {

      valor = valor / valorUSD;

    } else {

      valor = valor / valorEUR;
    }

    // Converter para moeda destino
    double convertido = 0;

    if (destino == 'Real') {

      convertido = valor * valorBRL;

    } else if (destino == 'Dolar') {

      convertido = valor * valorUSD;

    } else {

      convertido = valor * valorEUR;
    }

    setState(() {

      resultado =
      'Valor convertido: ${convertido.toStringAsFixed(2)}';

    });
  }

  // Limpar
  void limpar() {

    setState(() {

      valorController.clear();
      resultado = '';

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Consultar Bitcoin'),
      ),

      // ADICIONADO AQUI
      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            children: [

              const SizedBox(height: 25),

              Text(
                'Bitcoin em R\$ ${valorBRL.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 25),

              TextField(

                controller: valorController,

                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite um valor',
                ),
              ),

              const SizedBox(height: 25),

              const Text('Moeda de Origem'),

              RadioListTile(
                title: const Text('Real'),
                value: 'Real',
                groupValue: origem,
                onChanged: (value) {

                  setState(() {

                    origem = value!;
                  });
                },
              ),

              RadioListTile(
                title: const Text('Dolar'),
                value: 'Dolar',
                groupValue: origem,
                onChanged: (value) {

                  setState(() {

                    origem = value!;
                  });
                },
              ),

              RadioListTile(
                title: const Text('Euro'),
                value: 'Euro',
                groupValue: origem,
                onChanged: (value) {

                  setState(() {

                    origem = value!;
                  });
                },
              ),

              const SizedBox(height: 25),

              const Text('Moeda de Destino'),

              RadioListTile(
                title: const Text('Real'),
                value: 'Real',
                groupValue: destino,
                onChanged: (value) {

                  setState(() {

                    destino = value!;
                  });
                },
              ),

              RadioListTile(
                title: const Text('Dolar'),
                value: 'Dolar',
                groupValue: destino,
                onChanged: (value) {

                  setState(() {

                    destino = value!;
                  });
                },
              ),

              RadioListTile(
                title: const Text('Euro'),
                value: 'Euro',
                groupValue: destino,
                onChanged: (value) {

                  setState(() {

                    destino = value!;
                  });
                },
              ),

              const SizedBox(height: 25),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  ElevatedButton(
                    onPressed: Bitcoinsearch,
                    child: const Text('Verificar'),
                  ),

                  ElevatedButton(
                    onPressed: convert,
                    child: const Text('Calcular'),
                  ),

                  ElevatedButton(
                    onPressed: limpar,
                    child: const Text('Limpar'),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Text(
                resultado,
                style: const TextStyle(fontSize: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}