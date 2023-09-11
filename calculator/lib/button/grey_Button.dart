import 'package:calculator/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreyButtons extends StatelessWidget {
  final String title ;
  final VoidCallback onPress;
  const GreyButtons({Key? key, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: greyColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(title,style: const TextStyle(
              fontSize: 20,
              color: whiteColor,
            ),),
          ),
        ),
      ),
    );
  }
}
