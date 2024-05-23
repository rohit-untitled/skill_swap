import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/sortable/sortable_upcoming_sessions.dart';
import '../../../../utils/constants/sizes.dart';

class AllUpComingSessions extends StatelessWidget {
  const AllUpComingSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Upcoming Sessions',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableUpComingSessions(),
        ),
      ),
    );
  }
}
