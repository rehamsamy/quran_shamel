import 'package:flutter/material.dart';

import '../app_text.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppText('Empty');
  }
}
