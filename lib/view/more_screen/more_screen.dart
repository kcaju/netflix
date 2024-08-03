import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 37,
            ),
            _buildUsernameCard(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  size: 15,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              color: ColorConstants.grey.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.sms_outlined,
                        color: ColorConstants.mainWhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tell friends about Netflix.",
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 11),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        color: ColorConstants.grey,
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                        decorationColor: ColorConstants.grey,
                        decorationThickness: 2),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: ColorConstants.mainBlack,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        child: Text(
                          "Copy Link",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                        height: 40,
                        color: ColorConstants.mainWhite,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImageConstants.WHATSAPP,
                        height: 33,
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(
                          color: ColorConstants.dividergrey,
                          thickness: 2,
                        ),
                      ),
                      Image.asset(
                        ImageConstants.FB,
                        height: 33,
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(
                          color: ColorConstants.dividergrey,
                          thickness: 2,
                        ),
                      ),
                      Image.asset(
                        ImageConstants.GMAIL,
                        height: 33,
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(
                          color: ColorConstants.dividergrey,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: ColorConstants.mainWhite,
                            size: 28,
                          ),
                          Text(
                            "More",
                            style: TextStyle(
                                color: ColorConstants.mainWhite, fontSize: 15),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SizedBox(
                  width: 26,
                ),
                Icon(
                  Icons.check,
                  color: ColorConstants.mainWhite,
                  size: 33,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "My List",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              thickness: 1,
              color: ColorConstants.dividergrey,
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App Settings",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Hlep",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUsernameCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              DummyDb.usersList.length,
              (index) => UserNameCard(
                  onCardPressed: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  height: index == selectedIndex ? 70 : 60,
                  width: index == selectedIndex ? 73 : 65,
                  imagePath: DummyDb.usersList[index]['imagePath']!,
                  username: DummyDb.usersList[index]['name'].toString()),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 5, horizontal: 10), //outerside padding is margin

            height: 60,
            width: 63,
            child: Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
              size: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorConstants.mainWhite)),
          )
        ],
      ),
    );
  }
}
