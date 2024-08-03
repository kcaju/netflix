import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:netflix/view/widgets/user_name_card.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        title: Image.asset(
          ImageConstants.LOGO_PNG,
          height: 37.2,
        ),
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstants.mainWhite,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDb.usersList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 130, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            if (index < DummyDb.usersList.length) {
              return UserNameCard(
                  onCardPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ));
                  },
                  imagePath: DummyDb.usersList[index]['imagePath']!,
                  username: DummyDb.usersList[index]['name'].toString());
            } else {
              return InkWell(
                onTap: () {
                  DummyDb.usersList.add({
                    "imagePath": ImageConstants.USER1_PNG,
                    "name": "Emenalo"
                  });
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: ColorConstants.green,
                        content: Text("Profile added ")));
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(ImageConstants.ADD_PNG),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Add Profile",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 13.25),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
