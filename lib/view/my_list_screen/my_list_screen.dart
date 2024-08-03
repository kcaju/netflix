import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/my_list_screen/widgets/movie_cards.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Image.asset(
          ImageConstants.ICON_PNG,
          height: 38,
        ),
        title: Row(
          children: [
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 17),
            ),
            SizedBox(
              width: 11,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: ColorConstants.mainWhite,
            )
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: DummyDb.moviescard.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 7, mainAxisSpacing: 9, crossAxisCount: 3),
        itemBuilder: (context, index) => MovieCards(
          url: DummyDb.moviescard[index],
        ),
      ),
    );
  }
}
