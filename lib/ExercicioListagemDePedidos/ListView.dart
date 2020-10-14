import 'package:flutter/material.dart';

// Atividade de Listagem de Alimentos Dinâmicos.

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Menu do Restaurante'),
      ),
      body: buildListView(),
    ));
  }

  buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Hamburguer'),
          subtitle: Text('Pão,Carne,Tomate e Queijo'),
          trailing: Icon(Icons.add_shopping_cart),
        ),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Pastel'),
          subtitle: Text('Carne de Sol'),
          trailing: Icon(Icons.add_shopping_cart),
        ),
        ListTile(
          leading: Icon(Icons.local_drink),
          title: Text('Coca Cola'),
          subtitle: Text('Bebida a gás'),
          trailing: Icon(Icons.add_shopping_cart),
        ),
        ListTile(
          leading: Icon(Icons.local_drink),
          title: Text('Dolly'),
          subtitle: Text('Bebida a gás'),
          trailing: Icon(Icons.add_shopping_cart),
        ),
      ],
    );
  }
}
