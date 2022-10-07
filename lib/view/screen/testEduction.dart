import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Data/data.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/screen/info_card.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';
import 'package:portfolio/view/widgets/OnHover.dart';

class ProjectsPotfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, i) {
          return _horizontalListView(context);
        },
      ),
    );
  }

  Widget _horizontalListView(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: androidProjectList.length,
        itemBuilder: (_, int index) => Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Responsive.isDesktop(context)?
          OnHover(
            builder: (isHovered) {
              return isHovered
                  ? Container(
                      width: Responsive.isMobile(context)? 300: 400,
                      height: Responsive.isMobile(context)?80:120,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.green, width: 5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              androidProjectList[index].ImagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Container(
                              width: 280,
                              child: Text(
                                androidProjectList[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      width: Responsive.isMobile(context)?300:300,
                      height: Responsive.isMobile(context)?80:100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 5)),
                      child: Image.asset(
                        androidProjectList[index].ImagePath,
                        fit: BoxFit.fill,
                      ),
                    );
            },
          ):
          Container(
                width: Responsive.isMobile(context)?270:300,
                height: Responsive.isMobile(context)?40:100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5)),
                child: Image.asset(
                  androidProjectList[index].ImagePath,
                  fit: BoxFit.fill,
                ),
              )

        ),
      ),
    );
  }

  Widget _buildBox({required Color color}) => Container(
      margin: EdgeInsets.all(12), height: 100, width: 200, color: color);
}
