import 'package:booktickets/screens/ticket_view/thickContainer.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.87,
      height: 200.h,
      child: Container(
        margin: EdgeInsets.only(left: 10.w, right: 15.w),
        child: Column(
          children: [
            //the blue part of cart
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 17.h),
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade500,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17.r),
                      topRight: Radius.circular(17.r))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                          child: SizedBox(
                        height: 25.h,
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: const Text(
                                '-----',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Expanded(
                                child: Icon(
                              FluentSystemIcons.ic_fluent_airplane_filled,
                              color: Colors.white,
                            )),
                            Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: const Text(
                                '----',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        'LDN',
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        'New-York',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        '8H 30M',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'London',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),

            ///*************************///
            /// //the orange part of cart
            Container(
              color: Colors.deepOrangeAccent,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        17,
                        (index) => SizedBox(
                          height: 1.h,
                          width: 5.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///*****************************///
            /// //the bottom part of cart
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17),
                    bottomRight: Radius.circular(17)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '1 MAY',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Date',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '08:00 AM',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Departure time',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '23',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Number',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
