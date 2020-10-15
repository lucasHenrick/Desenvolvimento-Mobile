import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/ExercicioListagemDePedidos/ListView.dart';

import 'Pedido.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Lista',
        routes: {
          'Lista': (context) => main(),
          'pedido': (context) => Pedido(),
        });
  }
}
