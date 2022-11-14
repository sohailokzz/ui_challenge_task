import 'package:flutter/material.dart';
import 'package:remote_task/constants.dart';

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const IntroItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '#MOVEYOURMIND',
                  style: kTopTextStyle,
                ),
                Column(
                  children: [
                    Text(
                      title,
                      style: kTitleTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 80.0,
                      ),
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: kSubtitleTextStyle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
