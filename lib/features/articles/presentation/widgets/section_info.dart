import 'package:article_app/features/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionInfo extends StatelessWidget {
  String header;
  String data;

  SectionInfo({required this.header, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: blackColor),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            data,
            style: TextStyle(fontSize: 13.sp, color: blackColor),
          )
        ],
      ),
    );
  }
}
