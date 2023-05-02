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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsividade"),
      ),
      body: Column(
        children: [
          Container(
            width: largura,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.red,
            child: const Text("Responsividade"),
          )
        ],
      ),
    );
  }
}
