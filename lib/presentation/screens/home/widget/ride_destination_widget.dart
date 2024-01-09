import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ride_share/presentation/style/color_constants.dart';
import 'package:ride_share/presentation/widgets/widgets.dart';

import '../../../routes/app_router.gr.dart';
import 'ride_info_widget.dart';

class RideDestinationWidget extends StatefulWidget {
  final bool? isNewLayout;
  const RideDestinationWidget({
    Key? key,
    this.isNewLayout = false,
  }) : super(key: key);

  @override
  State<RideDestinationWidget> createState() => _RideDestinationWidgetState();
}

class _RideDestinationWidgetState extends State<RideDestinationWidget> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 12.0.w, right: 12.0.w, top: 40.w, bottom: 0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const RideInfoWidget(),
          SizedBox(
            height: 15.h,
          ),
          InkResponse(
            onTap: widget.isNewLayout == true
                ? null
                : () {
                    AutoRouter.of(context).push(const RideDetailsScreenRoute());
                  },
            child: Container(
              height: 120.h,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/Map.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8.r)),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                AnotherStepper(
                  activeIndex: activeIndex,
                  scrollPhysics: const ScrollPhysics(),
                  stepperList: [
                    StepperData(
                      title: StepperText(
                        "Douglas Crescent Road",
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'Lato',
                          height: 0,
                          color: RideShareColours.kPrimaryColor,
                        ),
                      ),
                      iconWidget: Image.asset("assets/images/Ellipse_8.png",
                          colorBlendMode: BlendMode.srcIn,
                          color: activeIndex == 0 ? Colors.red : Colors.green),
                    ),
                    StepperData(
                      title: StepperText(
                        "Logan Avenue",
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'Lato',
                          height: 0,
                          color: RideShareColours.kPrimaryColor,
                        ),
                      ),
                      iconWidget: Image.asset(
                        "assets/images/marker.png",
                        colorBlendMode: BlendMode.srcIn,
                        color: activeIndex == 0 ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                  stepperDirection: Axis.vertical,
                  iconHeight: 12.h,
                  iconWidth: 12.w,
                  verticalGap: 12,
                ),
                widget.isNewLayout == true
                    ? const SizedBox.shrink()
                    : Positioned(
                        left: 210.w,
                        top: 17.h,
                        bottom: 6.h,
                        right: 0.w,
                        child: CustomButton(
                          contentPadding: EdgeInsets.only(
                            left: 25.w,
                            top: 4.w,
                            bottom: 4.w,
                            right: 0.w,
                          ),
                          onPressed: () {
                            setState(() {
                              // Change the active index on button press or any other trigger
                              activeIndex = (activeIndex + 1) %
                                  2; // Wrap around to 0 after the last step
                            });
                          },
                          bgColor: Colors.black,
                          borderRadius: BorderRadius.circular(0),
                          child: Row(children: [
                            Image.asset("assets/images/naira.png"),
                            Text(
                              "2000",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                fontFamily: 'Lato',
                                height: 0,
                                color: Colors.white,
                              ),
                            )
                          ]),
                        ),
                      ),
              ],
            ),
          ),
          widget.isNewLayout == false
              ? const SizedBox.shrink()
              : Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Text(
                      "5 Seats Booked",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        fontFamily: 'Lato',
                        height: 0,
                        color: RideShareColours.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
          widget.isNewLayout == false
              ? const SizedBox.shrink()
              : Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 30.h,
                    width: 110.w,
                    color: Colors.black,
                    child: MaterialButton(
                      color: Colors.transparent,
                      onPressed: () {
                          setState(() {
                      activeIndex = (activeIndex + 1) % 2;
                    });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(4.0.w),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/naira.png"),
                                Text(
                                  "2000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    fontFamily: 'Lato',
                                    height: 0,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
