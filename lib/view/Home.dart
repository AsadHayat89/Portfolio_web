import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/screen/Appbar.dart';
import 'package:portfolio/view/screen/Education.dart';
import 'package:portfolio/view/screen/Projects.dart';
import 'package:portfolio/view/screen/front_screen.dart';
import 'package:portfolio/view/screen/getIntouch.dart';
import 'package:portfolio/view/screen/scroll-list.dart';
import 'package:portfolio/view/screen/testEduction.dart';
import 'package:portfolio/view/utils/constrants.dart';

import '../controller/drawerController.dart';
import 'screen/what_can_i.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          endDrawer: Scroldata(),
          //key: Custom._scaffoldKey,
          backgroundColor: kBackgroundColor,
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 10),
                  child: ApplicationBar(),
                ),
                FrontScreen(),
                WhatCan(),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Education(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Projects(),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: GetInTouch(),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
