import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget(
      {super.key,
      this.isCircle = false,
      this.Customheight = 161,
      this.Customwidth = 103,
      required this.Customtitle,
      required this.postersImages,
      this.haveInfoCard = false});
  final bool isCircle;
  final double Customheight, Customwidth;
  final String Customtitle;
  final List<String> postersImages;
  final bool haveInfoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            Customtitle,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
            height: isCircle ? Customwidth : Customheight,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      child: Visibility(
                        visible: haveInfoCard,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 3,
                              color: ColorConstants.primarygrey,
                            ),
                            Container(
                              color: ColorConstants.mainBlack,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: ColorConstants.mainWhite,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: ColorConstants.mainWhite,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(postersImages[index])),
                          color: Colors.amber,
                          shape:
                              isCircle ? BoxShape.circle : BoxShape.rectangle),
                      height: Customheight,
                      width: Customwidth,
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 7,
                    ),
                itemCount: postersImages.length)),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
