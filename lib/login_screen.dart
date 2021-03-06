import 'package:algoriza_task1/const/const.dart';
import 'package:algoriza_task1/reusable/reusableButton.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'const/imgPath.dart';
import 'const/string.dart';
import 'register_screen.dart';
import 'reusable/reusableOutlineButton.dart';

class LoginScreen extends StatefulWidget {
  static const String ID = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String initialCountry = 'EG';
  bool _validate = false;
  final TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          _text.text.isEmpty ? _validate = true : _validate = false;
        },
        child: Stack(
          children: [
            Image.asset(
              imgBackground!,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              color: Colors.white.withOpacity(0.5),
              colorBlendMode: BlendMode.modulate,
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 200),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome to Fashion Daily',
                        style: TextStyle(color: lightBlackTextColor),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 26, color: blackTextColor),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Help',
                                style: TextStyle(color: primaryColor, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.help,
                                color: primaryColor,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: _text,
                        decoration: InputDecoration(
                          labelText: 'Enter Phone Number',
                          errorText: _validate ? 'Please enter Phone Number' : null,
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: lightColor),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: CountryCodePicker(
                            initialSelection: initialCountry,
                            favorite: const ['EG'],
                            showFlag: true,
                            showCountryOnly: false,
                            onChanged: (CountryCode? code){
                              code = code;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      ReusableButton(
                        onPressed: () {},
                        text: 'Sign In',
                        color: primaryColor,
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1.2,
                              color: lightColor,
                              child: const Text(' '),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Or',
                            style: TextStyle(color: lightColor, fontSize: 18),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              height: 1.2,
                              color: lightColor,
                              child: const Text(' '),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      ReusableOutlineButton(
                        row: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: 30,
                            ),
                            const SizedBox(width: 25),
                            const Text(
                              'Sign In with google',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        color: primaryColor,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account? ',
                            style: TextStyle(fontSize: 18, color: lightBlackTextColor),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushReplacementNamed(RegisterScreen.ID),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 18, color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        loginText!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: lightColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
