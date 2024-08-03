import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/home_screen/widgets/movies_card_builder_widget.dart';
import 'package:netflix/view/my_list_screen/my_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePosterCard(context),
            SizedBox(
              height: 11,
            ),
            _buildPlaySection(),
            SizedBox(
              height: 40,
            ),
            MoviesCardBuilderWidget(
              postersImages: DummyDb.moviepostersList1,
              isCircle: true,
              Customtitle: "Previews",
            ),
            MoviesCardBuilderWidget(
              haveInfoCard: true,
              postersImages: DummyDb.moviepostersList2,
              Customtitle: "Continue watching for Emenalo",
            ),
            MoviesCardBuilderWidget(
                Customtitle: "Popular on Netflix",
                postersImages: DummyDb.moviepostersList4),
            MoviesCardBuilderWidget(
                Customtitle: "Trending Now",
                postersImages: DummyDb.moviepostersList5),
            MoviesCardBuilderWidget(
                Customtitle: "Top 10 in Nigeria Today",
                postersImages: DummyDb.moviepostersList6),
            MoviesCardBuilderWidget(
                Customtitle: "My List",
                postersImages: DummyDb.moviepostersList7),
            MoviesCardBuilderWidget(
                Customtitle: "African Movies",
                postersImages: DummyDb.moviepostersList3),
            MoviesCardBuilderWidget(
                Customtitle: "Nollywood Movies &  TVs",
                postersImages: DummyDb.moviepostersList1),
            MoviesCardBuilderWidget(
              postersImages: DummyDb.moviepostersList3,
              Customtitle: "Netflix Originals",
              Customheight: 251,
              Customwidth: 154,
            ),
            MoviesCardBuilderWidget(
                Customtitle: "Watch it Again",
                postersImages: DummyDb.moviepostersList2),
            MoviesCardBuilderWidget(
                Customtitle: "New Releases",
                postersImages: DummyDb.moviepostersList4),
            MoviesCardBuilderWidget(
                Customtitle: "TV Thrillers & Mysteries",
                postersImages: DummyDb.moviepostersList5),
            MoviesCardBuilderWidget(
                Customtitle: "US TV Shows",
                postersImages: DummyDb.moviepostersList7),
          ],
        ),
      ),
    );
  }

  Widget _buildMoviePosterCard(BuildContext context) {
    return Stack(children: [
      Container(
        height: 415,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.COVER_PNG))),
      ),
      Container(
        height: 415,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [ColorConstants.mainBlack, Colors.transparent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageConstants.ICON_PNG,
                    height: 57,
                  ),
                  Text(
                    "TV Shows",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 20),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyListScreen(),
                          ));
                    },
                    child: Text(
                      "My List",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstants.TOP10_PNG,
                  height: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "#2 in Nigeria Today",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 13.72,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          decoration: BoxDecoration(
              color: ColorConstants.grey,
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: ColorConstants.mainBlack,
                size: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "info",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
