import 'package:flutter/material.dart';
import 'package:mygateapp/navigation_utils/size_utils.dart';
import 'package:mygateapp/theam/app_string.dart';

import '../../navigation_utils/navigation.dart';
import '../../navigation_utils/routes.dart';
import '../../widget/custom_text.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeUtils.horizontalBlockSize * 5,
              horizontal: SizeUtils.verticalBlockSize * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.verticalBlockSize * 2,
                    vertical: SizeUtils.horizontalBlockSize * 5),
                child: CustomText(
                  text: AppString.discover,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeUtils.fSize_18(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeUtils.verticalBlockSize * 1.0,
                          vertical: SizeUtils.horizontalBlockSize * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.person_pin_outlined,
                              size: SizeUtils.horizontalBlockSize * 10,
                              color: Colors.red),
                          SizedBox(
                            height: SizeUtils.horizontalBlockSize * 2,
                          ),
                          CustomText(
                              text: AppString.residents,
                              fontSize: SizeUtils.fSize_15(),
                              fontWeight: FontWeight.bold),
                          SizedBox(height: SizeUtils.horizontalBlockSize * 1.5),
                          CustomText(text: AppString.viewSociety),
                          SizedBox(height: SizeUtils.horizontalBlockSize * 1.5),
                          CustomText(text: AppString.management),
                        ],
                      ),
                    ),
                    height: SizeUtils.verticalBlockSize * 15,
                    width: SizeUtils.horizontalBlockSize * 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 6.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigation.pushNamed(Routes.dailyhelp);
                    },
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeUtils.verticalBlockSize * 1.0,
                            vertical: SizeUtils.horizontalBlockSize * 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.help,
                                size: SizeUtils.horizontalBlockSize * 10,
                                color: Colors.red),
                            SizedBox(
                              height: SizeUtils.horizontalBlockSize * 2,
                            ),
                            CustomText(
                                text: AppString.dailyHelp,
                                fontSize: SizeUtils.fSize_15(),
                                fontWeight: FontWeight.bold),
                            SizedBox(
                                height: SizeUtils.horizontalBlockSize * 1.5),
                            CustomText(text: AppString.findDaily),
                            SizedBox(
                                height: SizeUtils.horizontalBlockSize * 1.5),
                            CustomText(text: AppString.providers),
                          ],
                        ),
                      ),
                      height: SizeUtils.verticalBlockSize * 15,
                      width: SizeUtils.horizontalBlockSize * 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 6.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
