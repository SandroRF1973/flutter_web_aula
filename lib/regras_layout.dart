import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({super.key});

  @override
  State<RegrasLayout> createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Builder"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(builder: (context, constraint) {
          var largura = constraint.maxWidth;
          // ignore: avoid_print
          print("Largura: $largura");

          if (largura < 600) {
            return const Text("Celulares");
          } else if (largura < 960) {
            return const Text("Celulares & Tablets");
          } else {
            return const Text("Telas maiores");
          }
          // return Container(
          //   child: const Text("Texto"),
          // );
        }),
      ),
    );
  }
}
