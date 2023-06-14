import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:kimhyerin/routes/slideLeft.dart';
import 'package:kimhyerin/screens/alarm.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 270.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/top.png",
                          ),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "오늘의 커밋",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: const Color(
                                0xff0D1916,
                              ),
                              fontFamily: 'text'),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/images/Logo.png"),
                Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 68.h),
                  child: Text(
                    "15",
                    style: TextStyle(
                      fontSize: 50.sp,
                      fontFamily: 'text',
                      color: reload.isReloaded
                          ? const Color(0xff0D1916)
                          : Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 156.h,
                        width: 161.w,
                        padding: EdgeInsets.only(top: 20.h, left: 25.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.r),
                            ),
                            color: const Color(0xffF2F2F2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "어제보다",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: const Color(0xff0D1916),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              "2번 더\n커밋했어요!",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: const Color(0xff0D1916),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 156.h,
                        width: 161.w,
                        padding: EdgeInsets.only(top: 20.h, left: 25.w),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.r)),
                            color: const Color(0xffF2F2F2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "평소보다",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: const Color(0xff0D1916),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              "5번 더 커밋\n하지 않았어요...",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: const Color(0xff0D1916),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
