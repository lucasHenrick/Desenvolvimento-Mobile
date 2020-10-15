import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/ExercicioRotas/Pedido.dart';

class ItemPedido extends StatelessWidget {
  final String titulo;
  final String mensagem;
  final IconData icon;

  ItemPedido(this.titulo, this.mensagem, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(this.icon),
        title: Text(titulo),
        subtitle: Text(mensagem),
        trailing: Icon(Icons.add_shopping_cart),
        onLongPress: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pedido()));
        },
      ),
    );
  }
}
