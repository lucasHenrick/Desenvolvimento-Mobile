import 'package:flutter/material.dart';

import 'ItemPedido.dart';

class ListaPedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemPedido('Hamburguer', '000001', Icons.fastfood),
        ItemPedido('Coca Cola', '000002', Icons.local_drink),
        ItemPedido('Sanduba Mexicano', '000003', Icons.fastfood),
        ItemPedido('Soda', '000004', Icons.local_drink),
        ItemPedido('Dolly', '000005', Icons.local_drink),
      ],
    );
  }
}
