import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.onTap, required this.buttonTitle});

  final String buttonTitle;
    final VoidCallback?  onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double
            .infinity, //this code changes the bottom width to devices max device width.
        height: kbottomContainerHeight,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            buttonTitle,
            style: kLargeTextStyle,
          ),
        )),
      ),
    );
  }
}
