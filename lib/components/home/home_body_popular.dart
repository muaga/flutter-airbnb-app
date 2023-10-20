import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomePopular extends StatelessWidget {
  const HomePopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: gap_l),
        _buildPopularTitle(),
        SizedBox(height: gap_l),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  HomePopularItem(id: 0),
                  HomePopularItem(id: 1),
                  HomePopularItem(id: 2),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Column _buildPopularTitle() {
    return Column(
      children: [
        Text("한국 숙소에 직접 다녀간 게스트의 후기", style: h5()),
        Text("게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)", style: body1()),
      ],
    );
  }
}
