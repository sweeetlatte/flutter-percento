import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/signup';
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: pNeutral1,
        padding: const EdgeInsets.all(18),
        child: Stack(children: [
          SingleChildScrollView(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 42, 0, 94),
                child: Text(
                  'Percento',
                  style: TextStyle(
                    color: pNeutral3,
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 4,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: pNeutral3,
                    fontSize: 20,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
              const TextField(
                cursorColor: pNeutral2,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: pNeutral3),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: pNeutral3,
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: pError,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: TextField(
                  obscureText: true,
                  cursorColor: pNeutral2,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: pNeutral3),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: pNeutral3,
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: pError,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: TextField(
                  obscureText: true,
                  cursorColor: pNeutral2,
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: TextStyle(color: pNeutral3),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: pNeutral3,
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: pError,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: pNeutral3,
                      elevation: 1,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30)),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  )),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already signed up? ',
                  style: styleSmallTextBlack,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Sign in here',
                    style: TextStyle(
                      color: pNeutral3,
                      fontSize: 11,
                      height: 1.5,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
