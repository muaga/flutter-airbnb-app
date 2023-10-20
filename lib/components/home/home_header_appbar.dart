import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAppbarLogo(),
        _buildAppbarMenu(),
      ],
    );
  }

  //////////////////////////////////////////////////////////////////////////////

  Row _buildAppbarMenu() {
    return Row(
      children: [
        Text("회원가입", style: h5(mColor: Colors.white)),
        SizedBox(width: gap_m),
        Text("로그인", style: h5(mColor: Colors.white)),
      ],
    );
  }

  Row _buildAppbarLogo() {
    return Row(
      children: [
        Image.asset("assets/logo.png",
            color: kAccentColor, width: 30, height: 30),
        SizedBox(width: gap_s),
        Text("RoomOfAll", style: h5(mColor: Colors.white)),
      ],
    );
  }
}
