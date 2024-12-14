import 'package:flutter/material.dart';
import 'package:login_ui/components/button.dart';
import 'package:login_ui/components/continue_with_button.dart';
import 'package:login_ui/components/text_field.dart';
import 'package:sizer/sizer.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool showPassword = true;
  showHidePassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff332fd4),
              Color(0xff7975e3),
            ],
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "jobsly",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 4.h,
                      fontWeight: FontWeight.w600),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 71.5.h,
                      width: 95.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(73, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3.h),
                      height: 70.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Welcome back",
                              style: TextStyle(
                                  fontSize: 2.5.h, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Enter your details below",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 1.5.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: const TextForm(
                                label: "Email Address",
                                obscureText: false,
                              ),
                            ),
                            TextForm(
                              label: "Password",
                              obscureText: showPassword,
                              suffixIcon: GestureDetector(
                                onTap: showHidePassword,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 2.h,
                                  width: 2.h,
                                  child: Icon(showPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: const Button(),
                            ),
                            const Text("Forgot your password?"),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Divider(
                                      color: Color(0xffD9D9D9),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: const Text(
                                      'or continue with',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Divider(
                                      color: Color(0xffD9D9D9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ContinueWith(
                              continueWithImage: "assets/google.svg",
                              imageHeight: 0.35.h,
                              methodName: "Google",
                            ),
                            ContinueWith(
                              continueWithImage: "assets/facebook.svg",
                              imageHeight: 0.35.h,
                              methodName: "Facebook",
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
