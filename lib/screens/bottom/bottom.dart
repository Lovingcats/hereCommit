import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kimhyerin/provider/reload.dart';
import 'package:kimhyerin/screens/bottom/feed.dart';
import 'package:kimhyerin/screens/bottom/home.dart';
import 'package:kimhyerin/screens/bottom/profile.dart';
import 'package:kimhyerin/screens/bottom/rank.dart';
import 'package:provider/provider.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedBarExample extends StatefulWidget {
  const AnimatedBarExample({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<AnimatedBarExample>
    with TickerProviderStateMixin {
  dynamic selected = 0;
  var heart = false;
  PageController controller = PageController();
  late AnimationController _animationController;
  late Animation<Color?> _animation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = ColorTween(
      begin: const Color(0xff0D1916),
      end: const Color(0xff565E5C),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    controller.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (!_isPressed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }

    _isPressed = !_isPressed;
  }

  @override
  Widget build(BuildContext context) {
    var reload = Provider.of<Reload>(context);
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent

      //to avoid the floating action button overlapping behavior,
      // when a soft keyboard is displayed
      // resizeToAvoidBottomInset: false,

      bottomNavigationBar: StylishBottomBar(
        backgroundColor: _animation.value,
        items: [
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            selectedIcon: const Icon(FontAwesomeIcons.house),
            // selectedColor: Colors.teal,
            selectedColor: const Color(0xff1AFFC8),
            title: Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                '홈',
                style: TextStyle(
                    fontSize: 9.sp,
                    color:
                        selected == 0 ? const Color(0xff1AFFC8) : Colors.white),
              ),
            ),
          ),
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.filePen),
            selectedIcon: const Icon(FontAwesomeIcons.filePen),
            selectedColor: const Color(0xff1AFFC8),
            // unSelectedColor: Colors.purple,
            // backgroundColor: Colors.orange,
            title: Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                '피드',
                style: TextStyle(
                    fontSize: 9.sp,
                    color:
                        selected == 1 ? const Color(0xff1AFFC8) : Colors.white),
              ),
            ),
          ),
          BottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.rankingStar,
              ),
              selectedIcon: const Icon(
                FontAwesomeIcons.rankingStar,
              ),
              selectedColor: const Color(0xff1AFFC8),
              title: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  '랭킹',
                  style: TextStyle(
                      fontSize: 9.sp,
                      color: selected == 2
                          ? const Color(0xff1AFFC8)
                          : Colors.white),
                ),
              )),
          BottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.user,
              ),
              selectedIcon: const Icon(
                FontAwesomeIcons.user,
              ),
              selectedColor: const Color(0xff1AFFC8),
              title: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  '마이페이지',
                  style: TextStyle(
                      fontSize: 9.sp,
                      color: selected == 3
                          ? const Color(0xff1AFFC8)
                          : Colors.white),
                ),
              )),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
        option: AnimatedBarOptions(
          iconSize: 19.w,

          // opacity: 0.3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            reload.change();
            _onButtonPressed();
          });
        },
        backgroundColor: const Color(0xff00FFC2),
        child: const Icon(
          Icons.cached,
          color: Color(0xff0D1916),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            Home(),
            Feed(),
            Rank(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
