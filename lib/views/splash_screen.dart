import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remote_task/constants.dart';
import 'package:remote_task/views/onboarding_view.dart';

import '../utilis/my_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboard1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image.asset("assets/images/logo.png"),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 80,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'COMENZÁ A VIVIR TU',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'NT EXPERIENCE',
                    style: kTitleTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MyButton(
                bgColor: appColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPages(),
                    ),
                  );
                },
                title: 'iniciar sesión',
              ),
            ),
          )
        ],
      ),
    );
  }
}
