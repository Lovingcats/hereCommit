import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _HomeState();
}

class _HomeState extends State<Profile> {
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
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "kimhyerin0909",
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: reload.isReloaded
                          ? const Color(0xff0D1916)
                          : Colors.white,
                      fontFamily: 'text'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 188.w,
                  height: 188.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/k99.png"),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 15.h),
                ),
                Text(
                  "🌕 Front-End Developer",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: reload.isReloaded
                          ? const Color(0xff0D1916)
                          : Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 31.w, right: 31.w, top: 17.h, bottom: 13.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(160.w, 48.h),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              side: BorderSide(
                                  color: const Color(0xffD9D9D9), width: 1.w),
                              elevation: 0.0),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "66",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: const Color(0xff0D1916),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "followers",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xff868C8A),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(160.w, 48.h),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              side: BorderSide(
                                  color: const Color(0xffD9D9D9), width: 1.w),
                              elevation: 0.0),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "62",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: const Color(0xff0D1916),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "following",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xff868C8A),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 230.h,
                  margin: EdgeInsets.only(left: 25.w, right: 25.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(8.r)),
                  padding: EdgeInsets.only(
                      left: 24.w, right: 24.w, top: 24.h, bottom: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "소통하고 싶은 개발자 ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xff0D1916),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: Text(
                              "김혜린",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff0D1916),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "입니다.",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff0D1916)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 160.h,
                        width: double.infinity.w,
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, bottom: 5.h, top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "1435 commits",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: reload.isReloaded
                                ? const Color(0xff0D1916)
                                : Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Container(
                    width: double.infinity,
                    height: 112.h,
                    child: Image.asset(
                      "assets/images/realc.png",
                      fit: BoxFit.fill,
                    ),
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
