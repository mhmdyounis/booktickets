import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.w),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: BorderRadius.circular(12.r),
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      height: 300.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          Container(
            height: 100.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.amberAccent,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assetName'),
                )),
          )
        ],
      ),
    );
  }
}
