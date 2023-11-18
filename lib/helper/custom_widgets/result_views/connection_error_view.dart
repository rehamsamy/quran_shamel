import 'package:flutter/material.dart';
import 'package:quran_shamel/helper/custom_widgets/app_text.dart';

class ConnectionErrorView extends StatelessWidget {
  const ConnectionErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppText('Connection Error');
  }
}
