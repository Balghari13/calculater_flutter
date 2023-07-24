import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onPress;
  const Buttons({super.key,
    required this.title,
    this.colors=const Color(0xffa5a5a5), required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
       // padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(vertical:10 ),
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: colors,
              shape: BoxShape.circle,
            ),
            child:  Center(child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18),)),
          ),
        ),
      ),
    );
  }
}
