import 'package:flutter/material.dart';

const width4 = Width(4);
const width6 = Width(6);
const width8 = Width(8);
const width12 = Width(12);

const height4 = Height(4);
const height6 = Height(6);
const height8 = Height(8);
const height12 = Height(12);

class Height extends StatelessWidget {
  final double height;

  const Height(
    this.height, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class Width extends StatelessWidget {
  final double width;

  const Width(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
