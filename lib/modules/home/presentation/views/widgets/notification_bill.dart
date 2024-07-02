import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationBill extends StatelessWidget {
  const NotificationBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Center(
        child: Stack(
          children: [
            SvgPicture.asset(
              AssetsData.notificationIcon,
              width: 23,
            ),
            Positioned(
              left: 5,
              top: 3,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: const Color(0xffC12222),
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: .3, color: const Color(0xffF8F8F8))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationBill2 extends StatelessWidget {
  const NotificationBill2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Center(
        child: Stack(
          children: [
            SvgPicture.asset(
              AssetsData.notificationIcon,
              width: 23,
            ),
            Positioned(
              right: 2,
              top: 3,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: const Color(0xffC12222),
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: .3, color: const Color(0xffF8F8F8))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
