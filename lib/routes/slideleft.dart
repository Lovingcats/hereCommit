import 'package:flutter/material.dart';

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideLeftRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut, // 애니메이션 커브 설정
                reverseCurve: Curves.easeIn, // 역방향 애니메이션 커브 설정
              ).drive(
                Tween<double>(begin: 0.0, end: 1).chain(
                  CurveTween(
                      curve: Interval(0.0, 0.7,
                          curve: Curves.linear)), // 애니메이션 지속 시간 설정
                ),
              ),
            ),
            child: child,
          ),
        );
}
