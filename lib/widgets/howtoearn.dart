import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HowToEarn extends StatefulWidget {
  const HowToEarn({super.key});

  @override
  State<HowToEarn> createState() => _HowToEarnState();
}

class _HowToEarnState extends State<HowToEarn> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 1200,
      width: size.width,
      // padding: const EdgeInsets.all(5),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 13),
      decoration: BoxDecoration(
        color: const Color.fromARGB(66, 158, 158, 158),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How to earn'.toUpperCase(),
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(183, 138, 233, 1),
                  ),
                ),
                const Image(
                  image: AssetImage('assets/images/Mask.png'),
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const StepContainer(
              helpingText: 'Tips Share to any groups to get rewards faster',
              reward: 'You',
              stepNumber: 1,
              mainText: 'Share Link to freinds',
            ),
            const StepContainer(
              helpingText:
                  'one inviter can only be associated with a mobile phone number',
              reward: 'Invitee',
              stepNumber: 2,
              mainText: 'Fill mobile phone number, download PalmPay',
            ),
            const StepContainer(
              helpingText: '',
              reward: 'invitees',
              stepNumber: 3,
              mainText: 'SignUp for PalmPay, get benefits for new users',
            ),
            const StepContainer(
              helpingText: '',
              reward: 'You',
              stepNumber: 4,
              mainText: 'Get great rewards!',
            ),
            Text(
              'Rules'.toUpperCase(),
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const RulesContainer(
              ruleNumber: 1,
              text:
                  "Each round of activity is 7 days.When the activity expires, if the user's amount has reached the withdrawl threshold and has not been withdrawn, the rerward amount will be automatically withdrawn;",
            ),
            const SizedBox(
              height: 10,
            ),
            const RulesContainer(
              ruleNumber: 2,
              text:
                  "Each round of activity is 7 days.When the activity expires, if the user's amount has reached the withdrawl threshold and has not been withdrawn, the rerward amount will be automatically withdrawn;",
            ),
            const SizedBox(
              height: 10,
            ),
            const RulesContainer(
              ruleNumber: 3,
              text:
                  "Each round of activity is 7 days.When the activity expires, if the user's amount has reached the withdrawl threshold and has not been withdrawn, the rerward amount will be automatically withdrawn;",
            ),
          ],
        ),
      ),
    );
  }
}

class StepContainer extends StatefulWidget {
  final String mainText;
  final String helpingText;
  final int stepNumber;
  final String reward;
  const StepContainer(
      {required this.helpingText,
      required this.reward,
      required this.stepNumber,
      required this.mainText,
      super.key});

  @override
  State<StepContainer> createState() => _StepContainerState();
}

class _StepContainerState extends State<StepContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: 120,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Step ${widget.stepNumber}'.toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Image(
                  image: AssetImage(
                    'assets/images/Layer 2.png',
                  ),
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.reward.toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            // width: size.width,
            width: 180,
            height: 100,
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.mainText,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(183, 138, 233, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    widget.helpingText,
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RulesContainer extends StatefulWidget {
  final String text;
  final int ruleNumber;
  const RulesContainer({
    required this.ruleNumber,
    required this.text,
    Key? key, // Use Key? key instead of super.key
  }) : super(key: key);

  @override
  State<RulesContainer> createState() => _RulesContainerState();
}

class _RulesContainerState extends State<RulesContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: 100,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.ruleNumber.toString(),
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '.',
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              Flexible(
                child: Text(
                  widget.text,
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
