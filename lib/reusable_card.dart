import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.rang, required this.cardChild , this.onPress});
  final Color rang;
  final Widget cardChild;
  // final Function onPress; this is showing a error saying that this makes the code onTap: onPress makes take a function with a parameter but ontap doesnot expects it, It expects void funciton so added the   final VoidCallback onPress; to make it void function.
    // final VoidCallback onPress; 
    final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10),
          color: rang,
        ),
        child: cardChild,
      ),
    );
  }
}
