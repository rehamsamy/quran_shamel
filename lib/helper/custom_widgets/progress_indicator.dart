import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final Color color;
  const CustomIndicator({
    super.key,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: color,
      radius: 20,
    );
  }
}
