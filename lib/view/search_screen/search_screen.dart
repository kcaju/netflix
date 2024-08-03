import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: ColorConstants.mainWhite,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: ColorConstants.mainWhite,
                  ),
                  hintText: "Search for a show,movie,genre,e.t.c.",
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  filled: true,
                  fillColor: ColorConstants.maingrey,
                  border: InputBorder.none
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(1))
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        height: 90,
                        color: ColorConstants.maingrey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          DummyDb.searchCards[index]['url']))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              DummyDb.searchCards[index]['title'],
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontSize: 15),
                            ),
                            Spacer(),
                            Icon(
                              Icons.play_circle_outline,
                              color: ColorConstants.mainWhite,
                              size: 28,
                            )
                          ],
                        ),
                      ),

                  // ListTile(
                  //       dense: false,
                  //       minTileHeight: 150,
                  //       tileColor: ColorConstants.maingrey,
                  //       leading: Container(
                  //         width: 146,
                  //         // height: 176,
                  //         color: Colors.red,
                  //       ),
                  //       title: Text(
                  //         "data",
                  //         style: TextStyle(color: ColorConstants.mainWhite),
                  //       ),
                  //       trailing: Icon(
                  //         Icons.play_circle_outline,
                  //         color: ColorConstants.mainWhite,
                  //       ),
                  //     )
                  // ,
                  separatorBuilder: (context, index) => SizedBox(
                        height: 3,
                      ),
                  itemCount: DummyDb.searchCards.length),
            )
          ],
        ),
      ),
    );
  }
}
