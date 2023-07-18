import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                child: Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/onboarding.svg', height: 237, width: 250,),

                      Text('X1 Fantasy', style: TextStyle(
                        fontSize: 24
                      )),


                      Text('Crie sua carreira de apostador virtual no mundo do x1')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
