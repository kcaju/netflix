import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Text(
                  "Smart Downloads",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Introducing Downloads For You",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 11),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 88.5,
                  backgroundColor: ColorConstants.maingrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 41,
                color: ColorConstants.blue,
                child: Center(
                  child: Text(
                    "SETUP",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Center(
                child: Container(
                  height: 33,
                  width: 242,
                  color: ColorConstants.maingrey,
                  child: Center(
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
