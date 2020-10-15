import 'package:flutter/material.dart';

import 'ExercicioListagemDePedidos/ListaPedido.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaPedido(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Lista de Pedidos '),
      ), // AppBar
    );
  }
}
