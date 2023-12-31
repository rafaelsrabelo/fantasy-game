import 'package:fantasygame/src/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatted = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatted = MaskTextInputFormatter(
    mask: '(##)#####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff1D927B),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(
                            style: TextStyle(
                              fontSize: 40,
                            ),
                            children: [])),
                        Text(
                          'X1 Fantasy',
                          style: GoogleFonts.karantina(
                              fontSize: 56,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(45))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text('Cadastro',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextiField(icon: Icons.person, label: 'Nome'),
                        CustomTextiField(icon: Icons.email, label: 'Email'),
                        const CustomTextiField(
                          icon: Icons.password,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        CustomTextiField(
                          icon: Icons.phone,
                          label: 'Telefone',
                          inputFormatters: [phoneFormatted],
                        ),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(
                                      0xff1D927B), // Defina a cor desejada aqui
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18))),
                              onPressed: () {},
                              child: const Text(
                                'Cadastrar Usuário',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
