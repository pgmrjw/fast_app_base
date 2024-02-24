import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color background;
  final double borderRadius;
  const RoundedContainer({
    super.key,
    required this.child,
    required this.background,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    this.borderRadius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: const [
            BoxShadow(blurRadius: 8, color: Color.fromARGB(30, 0, 0, 0)),
          ],
        ),
        padding: padding,
        child: child);
  }
}
