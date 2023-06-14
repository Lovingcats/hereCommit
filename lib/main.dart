import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:kimhyerin/screens/bottom/bottom.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Reload>(
          create: (_) => Reload(),
        ),
      ],
      child: ScreenUtilInit(
        //screenutil 라이브러리 (뒤에 .h, .w00, .r, .sp등등 크기를 반응형으로 만들어줌)
        designSize: const Size(393, 852), // 어떤 사이즈를 기준으로 만들것인가
        builder: (BuildContext context, Widget? child) => const MaterialApp(
            title: '김혜린따까리', debugShowCheckedModeBanner: false, home: Login()),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 199.h, bottom: 18.h),
                    child: Text(
                      "여깃데이",
                      style: TextStyle(
                          fontSize: 45.sp,
                          color: Colors.black,
                          fontFamily: 'text'),
                    )),
                Text(
                  "오늘 1일 1커밋 했나?!",
                  style: TextStyle(fontSize: 15.sp, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 75.h, bottom: 10.h, left: 65.w, right: 65.w),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AnimatedBarExample()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          minimumSize: Size(double.infinity, 46.h),
                          backgroundColor: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              right: 52.w,
                            ),
                            child: Image.asset("assets/images/github.png"),
                          ),
                          Text(
                            "Github로 로그인",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65.w, right: 65.w),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          minimumSize: Size(double.infinity, 46.h),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.w,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              right: 52.w,
                            ),
                            child: Image.asset("assets/images/apple.png"),
                          ),
                          Text(
                            "Apple로 로그인",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 256.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/main.png"),
                  fit: BoxFit.fill)),
        ));
  }
}
