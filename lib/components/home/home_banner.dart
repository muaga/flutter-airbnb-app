import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(children: [
        _buildBannerImage(),
        _buildBannerCaption(),
      ]),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              constraints: BoxConstraints(maxWidth: 280),
              child: Text("이제, 여행은 가까운 곳에서", style: h4(mColor: Colors.white))),
          SizedBox(height: gap_xs),
          Container(
            constraints: BoxConstraints(maxWidth: 280),
            child: Text("새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.",
                style: body1(mColor: Colors.white)),
          ),
          SizedBox(height: gap_m),
          ElevatedButton(
            onPressed: () {},
            child: Text("가까운 여행지 둘러보기", style: subtitle2()),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              minimumSize: Size(170, 35),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset("assets/banner.jpg",
          fit: BoxFit.cover, width: double.infinity, height: 320),
    );
  }
}
