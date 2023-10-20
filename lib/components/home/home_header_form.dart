import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/components/common/common_form_field.dart';
import 'package:flutter_airbnb_app/constants.dart';
import 'package:flutter_airbnb_app/size.dart';
import 'package:flutter_airbnb_app/style.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Form(
            /// TextFormField를 보내기 위해 Form으로 감싸야 한다.
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildHeaderFormTitle(),
                  SizedBox(height: gap_m),
                  _buildHeaderFormField(),
                  SizedBox(height: gap_m),
                  _buildHeaderFormSubmit()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////

  ElevatedButton _buildHeaderFormSubmit() {
    return ElevatedButton(
      onPressed: () {
        print("submit 실행됨");
      },
      child: Text("검색", style: subtitle1(mColor: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: kAccentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        /// TextStyle을 사용하려면 textStyle에 바로 사용해야 한다.
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }

  Column _buildHeaderFormField() {
    return Column(children: [
      CommonFormField("근처 추천 장소", "위치"),
      SizedBox(height: gap_s),
      Row(
        children: [
          /// Row로 두 필드를 Expanded해서 남은 공간에 필드가 들어갈 수 있도록 width를 지정해주는 역할을 한다.
          Expanded(child: CommonFormField("날짜 입력", "체크인")),
          Expanded(child: CommonFormField("날짜 입력", "체크아웃")),
        ],
      ),
      SizedBox(height: gap_s),
      Row(
        children: [
          Expanded(child: CommonFormField("2", "성인")),
          Expanded(child: CommonFormField("0", "어린이")),
        ],
      )
    ]);
  }

  Column _buildHeaderFormTitle() {
    return Column(children: [
      Text("모두의 숙소에서 숙소를 검색하세요.", style: h4()),
      SizedBox(height: gap_xs),
      Text(
        "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다.",
        style: body1(),
      ),
    ]);
  }
}
