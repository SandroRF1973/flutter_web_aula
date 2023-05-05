import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
      children: [
        Image.asset(
          "imagens/logo.png",
          fit: BoxFit.contain,
        ),
        Expanded(child: Container()),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_rounded),
        ),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white),
          child: const Text("Cadastrar"),
        ),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange, foregroundColor: Colors.white),
          child: const Text("Entrar"),
        ),
      ],
    ));
  }
}
