import 'package:flutter/material.dart';
import 'package:portflutte/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    required this.screenSize,
    required this.screenWidth,
  });

  final Size screenSize;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          Image.asset(
            'assets/my_flutter_avatar.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
