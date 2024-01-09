import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../style/color_constants.dart';

class RiderDetails extends StatelessWidget {
  final String? name;
  final String? imagePath;
  final String? time;
  final String? destination;
  const RiderDetails({
    Key? key,
    this.name,
    this.imagePath,
    this.time,
    this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.w, right: 28.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 44.h,
                width: 44.w,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath ?? "assets/images/Avatar.png"),
                  ),
                  shape: CircleBorder(
                    side: BorderSide(width: 0.5.w, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'Lato',
                            height: 0,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          time ?? "",
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
                    SizedBox(height: 8.h),
                    Image.asset(
                      "assets/images/star_rating.png",
                      height: 12.h,
                      width: 84.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Row(children: [
                  Image.asset(
                    "assets/images/marker.png",
                    height: 12.69.h,
                    width: 8.56.w,
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    destination ?? "",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      height: 0,
                      color: Colors.black,
                    ),
                  ),
                ]),
               const  Spacer(flex:1),
                InkResponse(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/Call.png",
                    height: 27.h,
                    width: 27.w,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
