import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowIndicator extends StatefulWidget {
  const ShowIndicator({Key? key}) : super(key: key);

  @override
  State<ShowIndicator> createState() => _ShowIndicatorState();
}

class _ShowIndicatorState extends State<ShowIndicator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 20,
          decoration: BoxDecoration(
            color: const Color.fromARGB(118, 158, 158, 158),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(125, 35, 224, 1),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          left: 85,
          top: 0,
          // bottom: 10,
          child: Column(
            children: [
              Text(
                '500',
                style: GoogleFonts.inter(
                  color: Color.fromARGB(103, 0, 0, 0),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 160,
          top: 0,
          child: Column(
            children: [
              Text(
                '1000',
                style: GoogleFonts.inter(
                  color: Color.fromARGB(103, 0, 0, 0),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 270,
          top: 0,
          child: Column(
            children: [
              Center(
                child: Text(
                  '2000',
                  style: GoogleFonts.inter(
                    color: Color.fromARGB(103, 0, 0, 0),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
