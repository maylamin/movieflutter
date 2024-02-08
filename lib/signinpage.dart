import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movieml/home_screen.dart';
import 'package:movieml/register.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController mycontrol = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 112, 145, 160),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),

              inputfield(context),

              forgetPassword(context),

              // sginUp(context),
            ],
          ),
        ),
      ),
    );
  }

  header(context) {
    return Column(
      children: [
        Text(
          'Hello , Welcome',
          style: GoogleFonts.passionOne(color: Colors.black, fontSize: 25),
        ),
        Text(
          'Please Sign in  here!',
          style: GoogleFonts.passeroOne(color: Colors.black, fontSize: 15),
        ),
      ],
    );
  }

  forgetPassword(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        },
        child: Text(
          'Forget password ? ',
          style: GoogleFonts.habibi(color: Colors.black, fontSize: 15),
        ));
  }

  inputfield(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(
              hintText: "Email address",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).canvasColor.withOpacity(0.2),
              filled: true,
              prefixIcon: const Icon(Icons.email)),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          controller: password,
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).canvasColor.withOpacity(0.2),
              filled: true,
              prefixIcon: const Icon(Icons.lock)),
          obscureText: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () async {
            setState(() {
              isloading = true;
            });
            try {
              // ignore: unused_local_variable, non_constant_identifier_names
              final Credential =
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: email.text,
                password: password.text,
              );
              if (context.mounted) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreenpage()));
              }
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                debugPrint('The password provided is too weak.');
              } else if (e.code == 'email-already-in-use') {
                debugPrint('The account already exists for that email.');
              }
            } catch (e) {
              print(e);
            } finally {
              setState(() {
                isloading = false;
              });
            }
          },
          // ignore: sort_child_properties_last
          child: Text(
            'Sgin in ',
            style: GoogleFonts.abel(color: Colors.white, fontSize: 15),
          ),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
        ),
      ],
    );
  }
}
