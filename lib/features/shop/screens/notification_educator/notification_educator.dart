import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class NotificationEducator extends StatelessWidget {
  const NotificationEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
