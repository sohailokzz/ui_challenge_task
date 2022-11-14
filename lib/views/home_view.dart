import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remote_task/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeView',
          style: GoogleFonts.rubik(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
