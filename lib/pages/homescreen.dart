import 'package:flutter/material.dart';
import 'package:moda_app/constant/app_constant.dart';
import 'package:moda_app/widgets/banner.dart';
import 'package:moda_app/widgets/top_profile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    List<String> topImgPath = [
      "assets/model1.jpeg",
      "assets/model2.jpeg",
      "assets/model3.jpeg",
      "assets/model1.jpeg",
      "assets/model2.jpeg",
      "assets/model3.jpeg",
    ];
    List<String> topImgPath2 = [
      "assets/chanellogo.jpg",
      "assets/chloelogo.png",
      "assets/louisvuitton.jpg",
      "assets/chanellogo.jpg",
      "assets/chloelogo.png",
      "assets/louisvuitton.jpg",
    ];
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Moda Uygulaması", style: Sabitler.titleStyle,),
        actions: [IconButton(onPressed: () {
          
        }, icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey,))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 17.h,
              width: double.infinity,
              child: ListView.builder(
                itemCount: topImgPath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                  return TopProfile(imgPath: topImgPath[index], imgPath2: topImgPath2[index]);
                }, ),
            ),
            Banners(),
          ],
        ),
      ),
    );
  }
}