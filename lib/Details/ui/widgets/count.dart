import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Count extends StatelessWidget {
  final String count;
  const Count({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
  
      children: [
        Text(
          'Count:',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat"),
        ),
        SizedBox(width: 4.w),
        Text(
          count,
          style: TextStyle(fontSize: 16.sp, fontFamily: "Montserrat"),
        ),
      ],
    );
  }
}
