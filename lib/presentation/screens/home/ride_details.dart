import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/presentation/screens/home/widget/ride_destination_widget.dart';

import '../../style/color_constants.dart';
import '../../widgets/widgets.dart';
import 'widget/riders_list.dart';

@RoutePage()
class RideDetailsScreenPage extends StatelessWidget {
  const RideDetailsScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: rideShareAppBar(
        context: context,
        elevation: 0,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: InkResponse(
          onTap: () {
            AutoRouter.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20.h,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Ride Share",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            fontFamily: 'Lato',
            height: 0,
            color: RideShareColours.kPrimaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8.w),
              child: const RideDestinationWidget(
                isNewLayout: true,
              ),
            ),
            const Divider(),
            const RidersList(),
            CustomButton(
              height: 60.h,
              width: MediaQuery.of(context).size.width * 0.8,
              borderRadius: BorderRadius.circular(30.r),
              bgColor: RideShareColours.kPrimaryColor,
              onPressed: () {},
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        Text(
                          "Start Trip",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            fontFamily: 'Lato',
                            height: 0,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(flex: 1),
                        const Icon(Icons.arrow_forward_rounded,
                            color: Colors.white)
                      ])),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
