import 'package:flutter/material.dart';

class PusulaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 296,
        height: 178,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Color(0x66000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0),
          ],
          image: DecorationImage(
            image: AssetImage('assets/pics/pusula_picture.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
