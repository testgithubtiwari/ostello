import 'package:flutter/material.dart';
import 'package:frontend/widgets/showindicator.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCoins extends StatefulWidget {
  const MyCoins({super.key});

  @override
  State<MyCoins> createState() => _MyCoinsState();
}

class _MyCoinsState extends State<MyCoins> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Coins',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: 170,
                height: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(56, 215, 159, 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    'Withdraw',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const ShowIndicator(),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Invite 3 new users to get ',
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'N500',
                style: GoogleFonts.inter(
                  color: Color.fromARGB(136, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cash will expire in ',
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '6Day 13h 59min 34s',
                style: GoogleFonts.inter(
                  color: const Color.fromARGB(144, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: size.width,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(125, 35, 224, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Invite',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
