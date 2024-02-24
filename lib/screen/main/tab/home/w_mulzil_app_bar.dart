import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constants.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';

class MulzilAppBar extends StatefulWidget {
  const MulzilAppBar({super.key});

  @override
  State<MulzilAppBar> createState() => _MulzilAppBarState();
}

class _MulzilAppBarState extends State<MulzilAppBar> {
  final bool _showRedDot = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: context.appColors.screenBackground,
        child: Row(
          children: [
            width12,
            SvgPicture.asset(
              "$basePath/icon/delete_x.svg",
              height: 30.0,
            ),
            emptyExpanded,
            Stack(children: [
              const Icon(
                Icons.notifications_none,
                size: 30.0,
              ),
              if (_showRedDot)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                )
            ]),
            width6,
            const Icon(Icons.account_circle, size: 30.0),
            width12
          ],
        ));
  }
}
