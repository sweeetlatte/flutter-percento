import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';
import 'package:percento/providers/auth.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/login';
  SignIn({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void handleSubmit() {
      final email = _emailController.text;
      final password = _passwordController.text;

      if (email.isNotEmpty && password.isNotEmpty) {
        Provider.of<AuthProvider>(context, listen: false)
            .login(email, password);
      }
    }

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
                  'SIGN IN',
                  style: TextStyle(
                    color: pNeutral3,
                    fontSize: 20,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
              TextField(
                controller: _emailController,
                cursorColor: pNeutral2,
                decoration: const InputDecoration(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: TextField(
                  controller: _passwordController,
                  // obscureText: true,
                  cursorColor: pNeutral2,
                  decoration: const InputDecoration(
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
                  onPressed: handleSubmit,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: pNeutral3,
                      elevation: 1,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30)),
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
