import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final VoidCallback onPressed;
  const Button(
      {super.key,
      required this.buttonText,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white), // Customize icon color
      label: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 16.sp, // Text size
            fontWeight: FontWeight.bold, //
            fontFamily: "Montserrat"),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Button background color
        padding: EdgeInsets.symmetric(
            vertical: 12.h, horizontal: 12.w), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Button border radius
        ),
        elevation: 3.0, // Button elevation (shadow)
      ),
    );
  }
}
