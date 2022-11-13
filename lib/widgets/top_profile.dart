import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopProfile extends StatelessWidget {
  final String imgPath;
  final String imgPath2;
  const TopProfile({super.key, required this.imgPath, required this.imgPath2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      height: 17.h,
      width: 10.h,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 9.h,
                width: 9.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage("$imgPath"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  top: 6.h,
                  left: 6.h,
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("$imgPath2")),
                        borderRadius: BorderRadius.circular(20)),
                  ))
            ],
          ),
          SizedBox(height: 1.5.h,),
          Container(
            height: 3.5.h,
            width: 10.h,
            child: Center(child: Text("Follow", style: TextStyle(color: Colors.white),)),
            decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
