import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({super.key});

  @override
  State<ResponsividadeMediaQuery> createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    // var larguraItem = largura * 0.25;
    var larguraItem = largura / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsividade"),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
            child: const Text("Responsividade"),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
            child: const Text("Responsividade"),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.yellow,
            child: const Text("Responsividade"),
          ),
        ],
      ),
    );
  }
}
