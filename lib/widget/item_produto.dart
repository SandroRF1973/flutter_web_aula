import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto(this.descricao, this.preco, this.imagem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: Colors.white),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
              flex: 8,
              child: Image.asset(
                "imagens/$imagem",
                fit: BoxFit.contain,
              )),
          Expanded(flex: 1, child: Text(descricao)),
          Expanded(
              flex: 1,
              child: Text(
                "R\$ $preco",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
