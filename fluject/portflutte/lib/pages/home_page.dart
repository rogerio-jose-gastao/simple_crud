import 'package:flutter/material.dart';
import 'package:portflutte/components/drawer_mobile.dart';
import 'package:portflutte/components/header_desktop.dart';
import 'package:portflutte/components/header_mobile.dart';
import 'package:portflutte/components/site_logo.dart';
import 'package:portflutte/constants/colors.dart';
import 'package:portflutte/constants/main_desktop.dart';
import 'package:portflutte/constants/nav_items.dart';
import 'package:portflutte/constants/size.dart';
import 'package:portflutte/styles/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= minDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // header
              if (constraints.maxWidth >= minDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    }),
              // main
              //MainDesktop(screenSize: screenSize, screenWidth: screenWidth),
              Container(
                height: screenSize.height,
                constraints: BoxConstraints(maxWidth: 560.0),
                child: Column(
                  children: [
                    //avatar img
                    Image.asset(
                      'assets/my_flutter_avatar.png',
                      width: screenWidth / 2,
                    ),
                    //intro text
                    const Text(
                      "Ola,\nSou Rogério Gastão\n Desenvolvedor Flutter",
                      style: TextStyle(
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.yellowPrimary),
                        onPressed: () {},
                        child: const Text(
                          "Experimente",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Skills
              Container(
                height: 500,
                width: double.maxFinite,
              ),

              // Projects
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.grey,
              )
            ],
          ),
        );
      },
    );
  }
}
