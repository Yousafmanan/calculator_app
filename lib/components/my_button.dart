import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const MyButton(
      {super.key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(
                color: const Color(0xcc000000),
                offset: new Offset(0.0, 5.0),
                blurRadius: 5.0,
              ),
            ], shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
