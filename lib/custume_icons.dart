import 'package:flutter/material.dart';

class IconsCard extends StatelessWidget {
  final IconData ic;
  const IconsCard({Key? key, required this.ic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 15,
      child: Icon(
        ic,
        color: Colors.black54,
      ),
    );
  }
}
