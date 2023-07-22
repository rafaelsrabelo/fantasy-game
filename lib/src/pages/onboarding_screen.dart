import 'package:fantasygame/src/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaçamento entre os elementos
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                SvgPicture.asset(
                  'assets/onboarding.svg',
                  height: 237,
                  width: 250,
                ),
                const SizedBox(height: 50),
                Text(
                  'X1 Fantasy',
                  style: GoogleFonts.rubik(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D927B),
                  ),
                ),
                Text(
                  'Crie sua carreira de apostador virtual no mundo do x1',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1D927B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                        return const SignInScreen();
                      }));
                    },
                    child: const Text(
                      'Continuar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
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
