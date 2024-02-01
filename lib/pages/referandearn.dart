import 'package:flutter/material.dart';
import 'package:frontend/widgets/customappbar.dart';
import 'package:frontend/widgets/customreferandearntext.dart';
import 'package:frontend/widgets/howtoearn.dart';
import 'package:frontend/widgets/mycois.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.ce,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.topLeft, child: const CustomAppBar()),
              const SizedBox(
                height: 10,
              ),
              const CustomReferAndEarn(),
              const SizedBox(
                height: 20,
              ),
              const MyCoins(),
              const SizedBox(
                height: 30,
              ),
              const HowToEarn(),
              const SizedBox(
                height: 20,
              ),
              Container(
                // alignment: Alignment.center,
                height: 50,
                width: 200,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(125, 35, 224, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Refer and Earn',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
