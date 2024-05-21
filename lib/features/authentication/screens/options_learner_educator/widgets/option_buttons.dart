import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons({
    super.key,
    required this.heading,
    required this.onTap,
  });
  final String heading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                // bottom right shadow
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
                // top left shadow is lighter
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 8,
                  spreadRadius: 1,
                )
              ],
            ),
            child: const Text('logo'),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            heading,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
