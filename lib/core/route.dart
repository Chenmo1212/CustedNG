import 'package:custed2/core/analytics.dart';
import 'package:flutter/cupertino.dart';

class AppRoute {
  final String title;
  final Widget page;

  AppRoute({this.title, this.page});

  void go(BuildContext context, {bool rootNavigator = false}) {
    Analytics.recordView(title);
    Navigator.of(context, rootNavigator: rootNavigator).push(
      CupertinoPageRoute(
        title: title,
        builder: (_) => page,
      ),
    );
  }

  void popup(BuildContext context, {bool useRootNavigator = true}) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => page,
      useRootNavigator: useRootNavigator,
    );
  }

  void exception(e) {}
}
