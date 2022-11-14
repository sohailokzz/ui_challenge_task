import 'package:flutter/material.dart';
import 'package:remote_task/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.bgColor,
  }) : super(key: key);

  final Function onTap;
  final Color bgColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 315,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: const Color(0xFF92A3FD),
          backgroundColor: bgColor,
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: Text(
          title,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
