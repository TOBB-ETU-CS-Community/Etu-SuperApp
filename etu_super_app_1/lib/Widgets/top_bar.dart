import 'package:flutter/material.dart';

import '../color_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(
        //   flex: 2,
        //   child: FittedBox(
        //     fit: BoxFit.contain,
        //     child: IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.menu,
        //           color: ColorConstants.mainBlackBlue,
        //         )),
        //   ),
        // ),
        // const Expanded(
        //   flex: 1,
        //   child: SizedBox(),
        // ),
        Expanded(
          flex: 5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'ETÜ-Super-App',
              semanticsLabel: 'Uygulama ismi',
              style: TextStyle(
                color: ColorConstants.mainBlackBlue,
                fontFamily: 'Mohave',
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );
  }
}
