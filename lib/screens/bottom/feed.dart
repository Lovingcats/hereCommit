import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:kimhyerin/widgets/feed_widget.dart';
import 'package:provider/provider.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _HomeState();
}

class _HomeState extends State<Feed> {
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
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: reload.isReloaded
                              ? const Color(0xff0D1916)
                              : Colors.white,
                          fontFamily: 'text'),
                    ),
                    const NearHairList()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
