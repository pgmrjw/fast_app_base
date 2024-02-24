// ignore_for_file: unused_import

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_event_list_item.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/home/diving_events_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_mulzil_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.screenBackground,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 64),
            child: Column(children: [
              BigButton(
                "일일 버디 찾기",
                onTab: () {
                  context.showSnackbar("버디찾기 화면으로 이동");
                },
              ),
              height6,
              RoundedContainer(
                background: context.appColors.containerBackground,
                child: Column(
                  children: [
                    Row(
                      children: [
                        'new_event'.tr().text.size(20).bold.make(),
                        emptyExpanded
                      ],
                    ),
                    ...divingEvents
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: EventListItem(e),
                            ))
                        .toList()
                  ],
                ),
              )
            ]).pSymmetric(h: 16),
          ),
          const MulzilAppBar(),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
