import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/components/home/home_body.dart';
import 'package:flutter_airbnb_app/components/home/home_header.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
