import 'package:flutter/material.dart';

import '../widget/ride_destination_widget.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              RideDestinationWidget(),
              Divider(),
            ],
          );
        });
  }
}
