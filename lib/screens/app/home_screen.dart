import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ticket_view/ticket.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.sp,
                                  color: Colors.grey,
                                  letterSpacing: 1.sp),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'Book Tickets',
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.sp),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: double.infinity.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(
                              FluentSystemIcons.ic_fluent_search_regular,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Search')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 38.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Flights',
                          style: TextStyle(
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.sp),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  fontSize: 17.sp, color: Color(0xffAA78E9)),
                            ))
                      ],
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TicketsView(),
                          TicketsView(),
                          TicketsView(),
                          TicketsView(),
                          TicketsView(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hotels',
                          style: TextStyle(
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.sp),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  fontSize: 17.sp, color: Color(0xffAA78E9)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 20.h),
                        child: Row(
                          children: [
                            HotelScreen(),
                            HotelScreen(),
                            HotelScreen(),
                            HotelScreen(),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
