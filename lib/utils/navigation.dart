import 'package:flutter/material.dart';


/// Scaffold messenger key
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

const Color _kCupertinoPageTransitionBarrierColor = Color(0x18000000);
const Color _kCupertinoModalBarrierColorLight = Color(0x33000000);
// ignore: unused_element
const Color _kCupertinoModalBarrierColorDark = Color(0x7A000000);

class MaterialPageRouteWithBarrier<T> extends MaterialPageRoute<T> {
  MaterialPageRouteWithBarrier({
    required super.builder,
    super.settings,
    super.maintainState = true,
    super.fullscreenDialog,
    super.allowSnapshotting = true,
  });

  @override
  Color? get barrierColor => fullscreenDialog //
      ? _kCupertinoModalBarrierColorLight
      : _kCupertinoPageTransitionBarrierColor;
}

extension NavigatorX on NavigatorState {
  bool isCurrentRouteFirst() {
    var isCurrentRouteFirst = false;
    popUntil((route) {
      isCurrentRouteFirst = route.isFirst;
      return true;
    });
    return isCurrentRouteFirst;
  }
}

Future<T?> replaceRootScreen<T extends Object?>(BuildContext context, Widget screen) {
  return Navigator.of(context, rootNavigator: true).pushAndRemoveUntil<T?>(
    MaterialPageRouteWithBarrier<T?>(
      builder: (context) => screen,
    ),
    (route) => false,
  );
}

Future<T?> navigateToScreen<T extends Object?>(
  BuildContext context,
  Widget screen, {
  bool fullscreenDialog = false,
  bool rootNavigator = false,
}) {
  return Navigator.of(context, rootNavigator: rootNavigator).push<T?>(
    MaterialPageRouteWithBarrier<T?>(
      builder: (context) => screen,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}

void showSnackBar(
  String message, {
  SnackBarAction? action,
  Color? backgroundColor,
  EdgeInsetsGeometry? margin,
}) {
  final scaffoldMessenger = scaffoldMessengerKey.currentState;
  if (scaffoldMessenger == null) {
    assert(false, 'ScaffoldMessenger not initiated');

    return;
  }

  scaffoldMessenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: margin,
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
