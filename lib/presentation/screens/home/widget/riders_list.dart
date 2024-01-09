import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/presentation/screens/home/widget/rider_details.dart';

import '../../../models/rider_model.dart';

class RidersList extends StatefulWidget {
  const RidersList({super.key});

  @override
  State<RidersList> createState() => _RidersListState();
}

class _RidersListState extends State<RidersList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.0.w),
              child: Text(
                "Riders",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: 'Lato',
                  height: 0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              shrinkWrap: true, 
              physics:const NeverScrollableScrollPhysics(),
                itemCount: riders.length,
                itemBuilder: (context, index) {
                  var rider = riders[index];
                  return Column(
                    children: [
                      RiderDetails(
                          imagePath: rider.imgUrl,
                          name: rider.name,
                          destination: rider.destination,
                          time: rider.time),
                      const Divider(),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
