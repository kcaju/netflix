import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/view/coming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          leading: Center(
            child: CircleAvatar(
              radius: 15,
              backgroundColor: ColorConstants.primaryRed,
              child: Icon(
                Icons.notifications,
                size: 20,
                color: ColorConstants.mainWhite,
              ),
            ),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 18,
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: List.generate(
                  3,
                  (index) => NewArrivalCard(
                    title: DummyDb.searchCards[index]['title'],
                    imageUrl: DummyDb.searchCards[index]['url'],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: List.generate(
                  DummyDb.moviepostersList7.length,
                  (index) => CustomVideoCard(
                    imgeUrl: DummyDb.moviepostersList7[index],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
