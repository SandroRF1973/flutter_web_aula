import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientação"),
      ),
      body: OrientationBuilder(builder: (context, orientacao) {
        // return Container(
        //   child: orientacao == Orientation.portrait
        //       ? const Text("Portrait")
        //       : const Text("Landscape"),
        // );
        return GridView.count(
          crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        );
      }),
    );
  }
}
