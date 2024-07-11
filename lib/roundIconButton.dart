// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RoudnIconButton extends StatelessWidget {
  const RoudnIconButton({super.key, 
    required this.icon,
    required this.onPress,
  });
  final IconData icon;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPress,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
