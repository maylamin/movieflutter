import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movieml/signinpage.dart';
import 'package:movieml/verify.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController mycontrol = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 151, 179),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),

              inputfield(context),

              // forgetPassword(context),

              sginin(context),
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
          'Please Register here!',
          style: GoogleFonts.passeroOne(color: Colors.black, fontSize: 15),
        ),
      ],
    );
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
              UserCredential newUser = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: email.text, password: password.text);
              // ignore: unused_local_variable
             
              final user = newUser.user;
              await user!.sendEmailVerification();
              if (context.mounted) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyPage()));
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
          child: isloading
              ? const CircularProgressIndicator()
              : Text(
                  'Sgin up ',
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

  forgetPassword(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SigninPage()));
        },
        child: Text(
          'Forget password ? ',
          style: GoogleFonts.habibi(color: Colors.black, fontSize: 15),
        ));
  }

  sginin(context) {
    return Row(
      children: [
        Text(
          "Do you already have an account?",
          style: GoogleFonts.habibi(color: Colors.black, fontSize: 15),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SigninPage()));
            },
            child: Text(
              'Sign in',
              style: GoogleFonts.habibi(color: Colors.black, fontSize: 15),
            ))
      ],
    );
  }
}
