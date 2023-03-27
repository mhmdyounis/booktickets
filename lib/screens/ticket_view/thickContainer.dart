import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(width: 2.5.w, color: Colors.white)),
    );
  }
}
