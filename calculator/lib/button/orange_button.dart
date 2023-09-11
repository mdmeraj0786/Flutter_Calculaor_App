import 'package:calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class OrangeButtons extends StatelessWidget {
  final String title ;
  final VoidCallback onPress ;
  const OrangeButtons({Key? key, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              color: orangeColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(title, style: const TextStyle(
                color: whiteColor,
                fontSize: 20,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
