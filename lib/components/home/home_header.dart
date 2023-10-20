import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb_app/components/home/home_header_form.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: header_height,

      /// 배경 image 크기에 맞춰 높이가 자동으로 설정되는 함수
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(gap_m),
        child: Column(
          children: [
            HomeHeaderAppbar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
