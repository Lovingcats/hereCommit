import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimhyerin/model/feed_model.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:provider/provider.dart';

class NearHairList extends StatefulWidget {
  const NearHairList({super.key});

  @override
  State<NearHairList> createState() => _NearHairState();
}

class _NearHairState extends State<NearHairList> {
  List<Feedmodel> feedList = <Feedmodel>[];

  @override
  void initState() {
    super.initState();
    feedList.add(Feedmodel(
        "kimhyerin0909", "assets/images/k99.png", "follow", "Lovingcats"));
    feedList.add(Feedmodel("kimhyerin0909", "assets/images/k99.png", "star",
        "Lovingcats/Flutter"));
    feedList.add(Feedmodel(
        "HyunJun Lee", "assets/images/lee.png", "create", "BSM-Cloud"));
    feedList.add(Feedmodel(
        "Lovingcats", "assets/images/lovingcats.png", "star", "BSM-Cloud"));
    feedList.add(Feedmodel(
        "HyunJun Lee", "assets/images/lee.png", "star", "kimhyerin0909"));

    feedList.add(Feedmodel(
        "Youngmin Kim", "assets/images/young.png", "follow", "Mobydick"));
    feedList.add(Feedmodel(
        "kimhyerin0909", "assets/images/k99.png", "create", "kimhyerin/babo"));
    feedList.add(Feedmodel("jsm8109jsm", "assets/images/jsm.png", "create",
        "jsm8109jsm/typescript"));
    feedList.add(Feedmodel("Youngmin Kim", "assets/images/young.png", "star",
        "kimhyerin0909/babo"));
    feedList.add(Feedmodel(
        "Lovingcats", "assets/images/lee.png", "follow", "Mobydick-Team"));
    feedList.add(Feedmodel(
        "kimhyerin0909", "assets/images/k99.png", "follow", "Lovingcats"));
    feedList.add(Feedmodel(
        "kimhyerin0909", "assets/images/k99.png", "star", "Lovingcats/Bgit"));
    feedList.add(
        Feedmodel("HyunJun Lee", "assets/images/lee.png", "star", "BSM-Cloud"));
    feedList.add(Feedmodel(
        "Lovingcats", "assets/images/lovingcats.png", "star", "BSM-Cloud"));
    feedList.add(Feedmodel(
        "HyunJun Lee", "assets/images/lee.png", "star", "kimhyerin0909"));

    feedList.add(Feedmodel(
        "Youngmin Kim", "assets/images/young.png", "follow", "Flutter/Getx"));
    feedList.add(Feedmodel(
        "kimhyerin0909", "assets/images/k99.png", "create", "kimhyerin/babo"));
    feedList.add(Feedmodel(
        "jsm8109jsm", "assets/images/jsm.png", "star", "Lovingcats/genius"));
    feedList.add(Feedmodel("Youngmin Kim", "assets/images/young.png", "star",
        "kimhyerin0909/babo"));
    feedList.add(Feedmodel(
        "Lovingcats", "assets/images/lee.png", "follow", "Mobydick-Team"));
  }

  @override
  Widget build(BuildContext context) {
    var reload = Provider.of<Reload>(context);
    return Column(
      children: makePaper(context, feedList, reload),
    );
  }
}

List<Widget> makePaper(
    BuildContext context, List<Feedmodel> feedList, var reload) {
  List<Widget> results = [];
  for (var i = 0; i < feedList.length; i++) {
    String status = feedList[i].status;
    results.add(status == "follow"
        ? Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(feedList[i].userimage),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 7.w),
                ),
                Text(
                  "${feedList[i].userName} ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: reload.isReloaded
                          ? const Color(0xff0D1916)
                          : Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "started following ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: reload.isReloaded
                        ? const Color(0xff0D1916)
                        : Colors.white,
                  ),
                ),
                Text(
                  feedList[i].reposit,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: reload.isReloaded
                          ? const Color(0xff0D1916)
                          : Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        : status == "star"
            ? Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(feedList[i].userimage),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 7.w),
                    ),
                    Text(
                      "${feedList[i].userName} ",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: reload.isReloaded
                              ? const Color(0xff0D1916)
                              : Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "starred ",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: reload.isReloaded
                              ? const Color(0xff0D1916)
                              : Colors.white),
                    ),
                    Text(
                      feedList[i].reposit,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: reload.isReloaded
                              ? const Color(0xff0D1916)
                              : Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(feedList[i].userimage),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 7.w),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${feedList[i].userName} ",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: reload.isReloaded
                                      ? const Color(0xff0D1916)
                                      : Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "created a repository ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: reload.isReloaded
                                    ? const Color(0xff0D1916)
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          feedList[i].reposit,
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: reload.isReloaded
                                  ? const Color(0xff0D1916)
                                  : Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ));
  }
  return results;
}
