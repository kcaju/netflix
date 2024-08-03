import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.imagePath,
      required this.username,
      this.onCardPressed,
      this.height,
      this.width});
  final String imagePath, username;
  final void Function()? onCardPressed;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Image.asset(
              imagePath,
              height: height,
              width: width,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            username,
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 13.5),
          )
        ],
      ),
    );
  }
}
