import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingDailog extends StatelessWidget {
  final String text;
  final String btntext;

  const LoadingDailog({super.key, required this.text, required this.btntext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoAlertDialog(
        title: Text(text),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoActivityIndicator(),
            SizedBox(height: 16.h),
            Text(btntext),
          ],
        ),
      ),
    );
  }
}
