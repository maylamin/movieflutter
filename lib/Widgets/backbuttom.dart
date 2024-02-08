
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';


class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      margin: const EdgeInsets.only(top: 8, left: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.amberAccent,
            size: 25,
          )),
    );
  }
}