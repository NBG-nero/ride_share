import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/presentation/style/color_constants.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../widgets/widgets.dart';
import 'tabs/completed_tab.dart';
import 'tabs/create_new_tab.dart';
import 'tabs/upcoming_tab.dart';

@RoutePage()
class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

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
      body: Padding(
        padding: EdgeInsets.only(top: 20.w, left: 14.w, right: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultTabController(
                length: 3,
                animationDuration: const Duration(milliseconds: 200),
                initialIndex: 0,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                              8.0.r), // Adjust the border radius as needed
                        ),
                        child: TabBar(
                          padding: EdgeInsets.zero,
                          labelStyle: TextStyle(fontSize: 12.sp),
                          tabs: const [
                            Tab(text: "Upcoming"),
                            Tab(text: "Completed"),
                            Tab(text: "Create new"),
                          ],
                          unselectedLabelColor: RideShareColours.kTextColor,
                          labelColor: RideShareColours.kNeutralGrey,
                          indicator: RectangularIndicator(
                              color: RideShareColours.kPrimaryColor,
                              horizontalPadding: 0.w,
                              bottomRightRadius: 5,
                              bottomLeftRadius: 5,
                              verticalPadding: 0.w),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const TabBarView(
                          children: [
                            UpcomingTab(),
                            CompletedTab(),
                            CreateNewTab()
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
