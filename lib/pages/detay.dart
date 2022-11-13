import 'package:flutter/material.dart';
import 'package:moda_app/constant/app_constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Detay extends StatefulWidget {
  final String imgPath;
  const Detay({super.key, required this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [ Hero(
          tag: widget.imgPath,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 4,
            child: Container(
              height: 245,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey),
                          image: DecorationImage(image: AssetImage("assets/dress.jpg"),fit: BoxFit.contain)),
                        ),
                        SizedBox(width: 2.h,),
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LAMINATED', style: Sabitler.urunStyle,),
                            SizedBox(height: 1.h,),
                            Text("Louis vuitton" , style: Sabitler.aciklamaStyle,),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Text("\$6500", style: Sabitler.fiyatStyle,),
                        SizedBox(width: 50.w,),
                        FloatingActionButton(
                          backgroundColor: Colors.brown,
                          child: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                          
                        },)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
        ]
      ),
    );
  }
}