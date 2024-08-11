import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  "HEY THERE! ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image.asset(
                "assets/gifs/hi.gif",
                height: 30,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Dheenul",
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.montserrat(fontWeight: FontWeight.w600)
                    .fontFamily),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
