import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return Container(
      // padding: const EdgeInsets.all(10),
      child: const Image(
        image: AssetImage('assets/images/chevron_big_left.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
