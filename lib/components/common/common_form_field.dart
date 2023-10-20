import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app/style.dart';

class CommonFormField extends StatelessWidget {
  final hintText;
  final prefixText;

  CommonFormField(this.hintText, this.prefixText);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,

          /// TextFormField 내부 세로 정렬
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: "${hintText}",
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 2, style: BorderStyle.solid)),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              "${prefixText}",
              style: overLine(),
            ))
      ],
    );
  }
}
