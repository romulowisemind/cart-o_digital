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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(100, 80, 100, 0),
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
                    cardController.launchInBrowser(
                      Uri.parse(
                          'https://www.linkedin.com/in/romulo-costa-segato-129767178/'),
                    );
                  },
                  child: Image.asset(
                    'assets/images/icons/icone_linkedin.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    cardController.launchInBrowser(
                      Uri.parse('https://github.com/romulowisemind'),
                    );
                  },
                  child: Image.asset(
                    'assets/images/icons/icone_github.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    cardController.launchInBrowser(
                      Uri.parse(
                          'https://api.whatsapp.com/send?phone=5534996528235'),
                    );
                  },
                  child: Image.asset(
                    'assets/images/icons/icone_whatsapp.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    cardController.launchInBrowser(
                      Uri.parse('mailto:romulocs38@gmail.com'),
                    );
                  },
                  child: Image.asset(
                    'assets/images/icons/icone_email.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
