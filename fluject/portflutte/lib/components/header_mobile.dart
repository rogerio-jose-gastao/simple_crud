// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portflutte/components/site_logo.dart';
import 'package:portflutte/styles/style.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    required this.onMenuTap,
  });
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: HederDecoration,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          const SizedBox(width: 20),
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
