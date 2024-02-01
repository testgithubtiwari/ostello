import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReferAndEarn extends StatefulWidget {
  const CustomReferAndEarn({super.key});

  @override
  State<CustomReferAndEarn> createState() => _CustomReferAndEarnState();
}

class _CustomReferAndEarnState extends State<CustomReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Refer & Earn',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/images/oval.png'),
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'xxxxxxxxxxxxxxxx got xxx(money) just now.',
                  style: GoogleFonts.inter(
                    color: const Color.fromARGB(255, 169, 105, 236),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
