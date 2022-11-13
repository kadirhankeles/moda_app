import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda_app/constant/app_constant.dart';
import 'package:moda_app/pages/detay.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      //color: Colors.blue.shade300,
      child: Container(
        height: 63.h,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/model1.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(width: 2.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Daisy", style: Sabitler.bannerTitleStyle,),
                    Text("34 mins ago", style: Sabitler.bannerTextStyle,),
                  ],
                ),
                SizedBox(width: 40.w,),
                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(height: 1.h,),
            Text("This official website features a ribbed knit zipper jacket that is"
                          "modern and stylish. It looks very temparament and is recommend to friends", style: Sabitler.bannerTextStyle,),
            SizedBox(height: 2.h,),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"assets/modelgrid1.jpeg" ),));
                  },
                  child: Hero(
                    tag: "assets/modelgrid1.jpeg",
                    child: Container(
                      height: 30.h,
                      width: 20.h,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"),fit: BoxFit.cover), borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                SizedBox(width: 1.h,),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"assets/modelgrid2.jpeg" ),));
                      },
                      child: Hero(
                        tag: "assets/modelgrid2.jpeg",
                        child: Container(
                                        height: 14.5.h,
                                        width: 20.h,
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"),fit: BoxFit.cover), borderRadius: BorderRadius.circular(5)),
                                      ),
                      ),
                    ),
                SizedBox(height: 1.h,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath:"assets/modelgrid3.jpeg" ),));
                  },
                  child: Hero(
                    tag: "assets/modelgrid3.jpeg",
                    child: Container(
                      height: 14.5.h,
                      width: 20.h,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"),fit: BoxFit.cover), borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                  ],
                )
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2.h),
                  height: 4.h,
                  width: 15.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.brown.withOpacity(0.2)),
                  child: Center(child: Text("#Louis Vuitton", style: TextStyle(color: Colors.brown),),),
                ),
                Container(
                  height: 4.h,
                  width: 15.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.brown.withOpacity(0.2)),
                  child: Center(child: Text("#Chole", style: TextStyle(color: Colors.brown),),),
                ),
              ],
            ),
            SizedBox(height: 1.h,),
            Divider(),
            SizedBox(height: 1.h,),
            Row(
              children: [
                Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1.7k",
                          style: GoogleFonts.montserrat( textStyle: TextStyle(fontSize: 16)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "325",
                          style: GoogleFonts.montserrat( textStyle: TextStyle(fontSize: 16,)),
                        ),
                        SizedBox(width: 12.h,),
                        Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.3k",
                                style: GoogleFonts.montserrat( textStyle: TextStyle(fontSize: 16,)),
                              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
