import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/presentation/style/color_constants.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 1),
        Center(
            child: Text(
          "Coming Soon",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28.sp,
            fontFamily: 'Lato',
            height: 0,
            color: RideShareColours.kPrimaryColor,
          ),
        )),
        const Spacer(flex: 2),
      ],
    );
  }
}
