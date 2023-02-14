import 'package:flutter/material.dart';
import 'package:klando_app/widgets/button_widget.dart';
import 'package:klando_app/widgets/otp_fields.dart';

// ignore: camel_case_types
class OTP_screen extends StatefulWidget {
  const OTP_screen({super.key});

  @override
  State<OTP_screen> createState() => _OTP_screenState();
}

// ignore: camel_case_types
class _OTP_screenState extends State<OTP_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "OTP verification",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Enter 6 Digit Code",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "A 6 digit code has been sent to you via SMS. Enter the 6 digits below.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: Row(
                  children: [
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                    OtpFields(),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("You did not receive the 6-digit Code?"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Resend Code",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          CustomButton(
              buttonText: "Verify",
              buttonColor: const Color(0xff1363DF),
              onPressed: () {})
        ],
      ),
    );
  }
}
