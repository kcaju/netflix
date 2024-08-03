import 'package:flutter/material.dart';

import 'package:netflix/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.imgeUrl});
  final String imgeUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imgeUrl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(0.83),
                            fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(0.83),
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Season 1 CominG December 14",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.83),
                    fontSize: 11),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Castle & Castle",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.83),
                    fontSize: 12),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                textAlign: TextAlign.justify,
                "Steamy . Soapy . Slow Burn . Suspenseful . Teen . Mystery",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        )
      ],
    );
  }
}
