import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'News',
          style: TextStyle(color: Colors.black, fontSize: 22.0),
        ),
        Text(
          'Cloud',
          style: TextStyle(color: Colors.amber, fontSize: 22.0),
        ),
      ],
    );
  }
}
