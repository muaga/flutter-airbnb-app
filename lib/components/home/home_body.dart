import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/components/home/home_banner.dart';
import 'package:flutter_airbnb_app/components/home/home_body_popular.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    /// 해당 화면(context)의 body의 width를 받아온다.
    double bodyWidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBanner(),
            HomePopular(),
          ],
        ),
      ),
    );
  }
}
