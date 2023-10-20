import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomePopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomePopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPopularImage(),
        SizedBox(height: gap_s),
        _buildPopularItemStar(),
        SizedBox(height: gap_s),
        _buildPopularItemComment(),
        SizedBox(height: gap_s),
        _buildPopularItemUserInfo(),
      ],
    );
  }

  //////////////////////////////////////////////////////////////////////////

  Row _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("avatar.png"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text("데어", style: subtitle1()),
            Text("한국"),
          ],
        ),
      ],
    );
  }

  Column _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
          style: body1(),

          /// 글자제한
          maxLines: 3,

          /// 글자가 3 라인을 벗어나면, ... 처리된다.
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  ClipRRect _buildPopularImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("assets/${popularList[id]}"));
  }

  Row _buildPopularItemStar() {
    return Row(
      children: [
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
      ],
    );
  }
}
