import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/item_produto.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;

    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: const MobileAppBar(),
              )
            : PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: const WebAppBar(),
              ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              ItemProduto("Kit Multimídia", "2.500,00", "p1.jpg"),
              ItemProduto("Pneu Goodyear", "800,00", "p2.jpg"),
              ItemProduto("Samsumg 9", "4.100,00", "p3.jpg"),
              ItemProduto("Samsumg Edge", "2.150,90", "p4.jpg"),
              ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
              ItemProduto("Iphone 10", "1.900,20", "p6.jpg"),
            ],
          ),
        ),
      );
    });
  }
}
