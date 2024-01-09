import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../style/color_constants.dart';

class RideInfoWidget extends StatelessWidget {
  const RideInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide(width: 2.w, color: Colors.black),
            ),
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/p_head.png",
                      width: 9.w, height: 9.h),
                  Image.asset("assets/images/p_body.png",
                      width: 16.w, height: 10.h)
                ]),
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
           width: MediaQuery.of(context).size.width * 0.72,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
            
                children: [
                  Text(
                    "11/Sep/2023",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      fontFamily: 'Lato',
                      height: 0,
                      color: RideShareColours.kPrimaryColor,
                    ),
                  ),
                  const Spacer(flex: 1),
                  Text(
                    "8:12pm",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      fontFamily: 'Lato',
                      height: 0,
                      color: RideShareColours.kGreyColor2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "4 seats",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Lato',
                          height: 0,
                          color: RideShareColours.kGreyColor,
                        ),
                      ),
                      Text(
                        "46min 10sec",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Lato',
                          height: 0,
                          color: RideShareColours.kGreyColor,
                        ),
                      ),
                      Text(
                        "40.4 mile",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Lato',
                          height: 0,
                          color: RideShareColours.kGreyColor,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        )
      ]),
    ]);
  }
}
