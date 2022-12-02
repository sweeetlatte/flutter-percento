import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/login';
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'SIGN IN',
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
                padding: EdgeInsets.fromLTRB(0, 24, 0, 12),
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
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(bottom: 32),
                child: const Text(
                  'Forgot password?',
                  style: styleSmallTextBlack,
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: pNeutral3,
                      elevation: 1,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 30)),
                  child: const Text(
                    'SIGN IN',
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
              children: const [
                Text(
                  'Not signed up yet? ',
                  style: styleSmallTextBlack,
                ),
                Text(
                  'Sign up here',
                  style: TextStyle(
                    color: pNeutral3,
                    fontSize: 11,
                    height: 1.5,
                    decoration: TextDecoration.underline,
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
