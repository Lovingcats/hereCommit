import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:provider/provider.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _HomeState();
}

class _HomeState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    var reload = Provider.of<Reload>(context);
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: AnimatedContainer(
          width: double.infinity,
          height: double.infinity,
          color: reload.isReloaded ? Colors.white : const Color(0xff0D1916),
          duration: const Duration(milliseconds: 350),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 17.h,
                  ),
                  Text(
                    "개발짱이 누고",
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: reload.isReloaded
                            ? const Color(0xff0D1916)
                            : Colors.white,
                        fontFamily: 'text'),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 180.h,
                          width: 139.w,
                          child: Image.asset(
                            "assets/images/1.png",
                            fit: BoxFit.fill,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/lovingcats.png"),
                              ),
                            ),
                            margin: EdgeInsets.only(right: 4.w, top: 5.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14.h, bottom: 9.h),
                            child: Text(
                              "Lovingcats",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: reload.isReloaded
                                      ? const Color(0xff0D1916)
                                      : Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "1784 commits",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: const Color(0xff737373),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 52.h, left: 48.w, right: 48.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 110.h,
                                width: 98.w,
                                child: Image.asset(
                                  "assets/images/2.png",
                                  fit: BoxFit.fill,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage("assets/images/k99.png"),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(right: 4.w, top: 5.h),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 14.h, bottom: 9.h),
                                  child: Text(
                                    "kimhyrin0909",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: reload.isReloaded
                                            ? const Color(0xff0D1916)
                                            : Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "1435 commits",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff737373),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 110.h,
                                width: 98.w,
                                child: Image.asset(
                                  "assets/images/3.png",
                                  fit: BoxFit.fill,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage("assets/images/cat.png"),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(right: 4.w, top: 5.h),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 14.h, bottom: 9.h),
                                  child: Text(
                                    "dongmedal",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: reload.isReloaded
                                            ? const Color(0xff0D1916)
                                            : Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "1275 commits",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff737373),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 4.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 32.h, bottom: 5.h),
                    color: const Color(0xffF2F2F2),
                  ),
                  for (int i = 0; i < 25; i++)
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, left: 36.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 58.w,
                            height: 58.h,
                            decoration: const BoxDecoration(
                                color: Color(0xffD9D9D9),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "gimhanul",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: reload.isReloaded
                                        ? const Color(0xff0D1916)
                                        : Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                "1145 commits",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: const Color(0xff737373)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
