import 'package:etu_super_app_1/color_constants.dart';
import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem(
      {super.key,
      required this.lessonId,
      required this.place,
      required this.zoomLink});
  final String lessonId;
  final String place;
  final String? zoomLink;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.lightRed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              lessonId,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.mainBlackBlue,
                fontFamily: 'Mohave',
                fontSize: 15,
              ),
            ),
            Text(
              place,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.mainBlackBlue,
                fontFamily: 'Mohave',
                fontSize: 15,
              ),
            ),
            // SizedBox(
            //   child: zoomLink == null
            //       ? const SizedBox()
            //       : Text(
            //           zoomLink!,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             color: ColorConstants.mainBlackBlue,
            //             fontFamily: 'Mohave',
            //             fontSize: 15,
            //           ),
            //         ),
            // )
          ],
        ),
      ),
    );
  }
}
