import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rove_app/components/my_button.dart';
import 'package:rove_app/components/my_textfield.dart';
import 'package:rove_app/screens/traveller_loginpage.dart';

class EnteringCredentialPage extends StatelessWidget {
  EnteringCredentialPage({
    super.key,
  });

  //text editing controller
  final idController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Enter',
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Your Credentials',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                SizedBox(
                  height: 90,
                ),
                MyTextField(
                    controller: idController,
                    hintText: 'Enter ID',
                    obscureText: false),
                SizedBox(
                  height: 15,
                ),
                MyTextField(
                    controller: phoneNumberController,
                    hintText: 'Password',
                    obscureText: false),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                    myButtonColor: Colors.grey,
                    onTap: () {},
                    myButtonText: 'Continue'),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TravellerLoginPage()));
                  },
                  child: Center(
                    child: Text(
                      'Go back to login',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 48, 142, 189),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
