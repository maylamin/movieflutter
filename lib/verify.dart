import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieml/signinpage.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 234, 201, 102),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Column(
          children: [
            Image.asset(
              'images/verify1.jpg',
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Here,get started',
              style: GoogleFonts.almendra(
                  color: Colors.redAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "We've sent you an verification email. Please verify your account to continue.",
              style: GoogleFonts.farro(
                  color: Colors.redAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninPage()));
                  User? currentUser = FirebaseAuth.instance.currentUser;
                  print(currentUser);
                  await currentUser!.reload();
                  currentUser = FirebaseAuth.instance.currentUser;

                  print(currentUser);
                  print(currentUser!.emailVerified);

                  if (currentUser.emailVerified == true) {
                    print(">>>>>");
                  } else {
                    print("error");
                  }
                },
                style: ButtonStyle(
                    foregroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.black),
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Colors.blueAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
                child: Text("I've already verified.",
                    style: GoogleFonts.almendra(
                        color: const Color.fromARGB(255, 74, 31, 31),
                        fontSize: 30,
                        fontWeight: FontWeight.normal)),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style:  ButtonStyle(
            //       foregroundColor: const MaterialStatePropertyAll<Color>(Colors.blueAccent),
            //       backgroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
            //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(25),
            //        ))
            //     ),
            //     child: const Text(
            //       'Login',
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
          ],
        ),
      )),
    );

    // appBar: AppBar(title: const Text("Verify your email")),
    // body: Center(
    //     child: Column(
    //   children: [
    //     const Text(
    //         "We've sent you an verification email. Please verify your account to continue."),
    //     ElevatedButton(
    //         onPressed: () async {
    //           Navigator.push(context,
    //               MaterialPageRoute(builder: (context) => const SigninPage()));
    //           User? currentUser = FirebaseAuth.instance.currentUser;

    //           print(currentUser);
    //           await currentUser!.reload();
    //           currentUser = FirebaseAuth.instance.currentUser;

    //           print(currentUser);
    //           print(currentUser!.emailVerified);

    //           if (currentUser!.emailVerified == true) {
    //             print(">>>>>");
    //           } else {
    //             print("error");
    //           }
    //           // currentUser.emailVerified
    //         },
    //         child: const Text("I've already verified."))
    //   ],
    // )),
  }
}
