import 'package:fantasygame/src/config/api_config.dart';
import 'package:fantasygame/src/pages/onboarding_screen.dart';
import 'package:fantasygame/src/widgets/greeting_card.dart';
import 'package:fantasygame/src/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          // Botão de saída da aplicação
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return OnBoardingScreen();
                }));
              },
              icon: IconButton(
                  icon: const Icon(Icons.exit_to_app),
                  onPressed: () {
                    ApiConfig.logout()
                        .then((value) => {Navigator.pushNamed(context, 'onboarding')});
                  }),
              color: Colors.black,
            ),
          ),
        ],
        title:
            const Text.rich(TextSpan(style: TextStyle(fontSize: 30), children: [
          TextSpan(
              text: 'Home',
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ])),
      ),

      // Campo de pesquisa
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GreetingCard(
              name: 'Rafael Rabelo',
              onActivate: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SearchField(
              hintText: 'Busque um jogo',
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
