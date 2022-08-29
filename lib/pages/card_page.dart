import 'package:flutter/material.dart';

import 'package:projetin/pages/card_controller.dart';


class CartaoPage extends StatelessWidget {
  CartaoPage({Key? key}) : super(key: key);

  final textoStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final textoStyle1 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
  final cardController = CardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cartão Digital ',
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.fromLTRB(100, 80, 100, 0),
            child: CircleAvatar(
              radius: 130.0,
              backgroundImage: AssetImage('assets/images/image_card_page.jpeg'),
            ),
          ),
          Text(
            'Romulo Costa Segato',
            style: textoStyle,
          ),
          Text(
            'Desenvolvedor Flutter',
            style: textoStyle1,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  cardController.linkedin();
                },
                child: Image.asset(
                  'assets/images/icons/icone_linkedin.png',
                  width: 20,
                  height: 20,
                ),
              ),
              //usar estrutura de cima(GestureDetector)
              IconButton(
                icon: InkWell(
                  child: Image.asset('assets/images/icons/icone_github.png'),
                ),
                onPressed: () {},
              ),
              //usar estrutura de cima
              IconButton(
                icon: InkWell(
                  child: Image.asset('assets/images/icons/icone_whatsapp.png'),
                ),
                onPressed: () {},
              ),
              //usar estrutura de cima
              IconButton(
                icon: InkWell(
                  child: Image.asset('assets/images/icons/icone_email.png'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
