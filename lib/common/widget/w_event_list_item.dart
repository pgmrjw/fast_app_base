import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_event.dart';
import 'package:flutter/material.dart';

class EventListItem extends StatelessWidget {
  final Event event;

  const EventListItem(
    this.event, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      background: context.appColors.containerBackground,
      borderRadius: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              event.time.toString().text.size(14).make(),
              Row(
                children: [
                  Icon(
                    Icons.water,
                    color: context.appColors.waterIcon,
                  ),
                  width4,
                  event.location.text.size(18).make(),
                  width6,
                  event.region.text.size(12).make()
                ],
              ),
              height6,
              Row(
                children: [
                  event.type.name.text.size(12).make(),
                  " / ".text.size(12).make(),
                  event.requirement.text.make(),
                  " / ".text.size(12).make(),
                  if (event.fee == 0)
                    "무료".text.size(12).make()
                  else
                    event.fee.toString().text.size(12).make(),
                ],
              ),
            ],
          ),
          const Icon(Icons.person)
        ],
      ),
    );
  }
}
