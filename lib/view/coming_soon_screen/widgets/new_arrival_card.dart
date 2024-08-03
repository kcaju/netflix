import 'package:flutter/material.dart';

import 'package:netflix/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });
  final String imageUrl, title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        color: ColorConstants.maingrey,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 55,
                  width: 113,
                )),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.mainWhite.withOpacity(0.83),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Nov 6",
                  style: TextStyle(
                    fontSize: 11,
                    color: ColorConstants.mainWhite.withOpacity(0.47),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
