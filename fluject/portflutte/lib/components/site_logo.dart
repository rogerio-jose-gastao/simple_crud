// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portflutte/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "ROGER",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: CustomColor.yellowSecondary,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
