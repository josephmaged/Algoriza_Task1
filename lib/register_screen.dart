import 'package:algoriza_task1/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'const/const.dart';
import 'const/imgPath.dart';
import 'const/string.dart';
import 'reusable/reusableButton.dart';
import 'reusable/reusableOutlineButton.dart';

class RegisterScreen extends StatefulWidget {
  static const String ID = 'RegisterScreen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () =>  FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Wrap(
              children: [
                Image.asset(
                  imgBackground!,
                  fit: BoxFit.cover,
                  color: Colors.white.withOpacity(0.5),
                  colorBlendMode: BlendMode.modulate,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 80),
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
                            'Register',
                            style: TextStyle(fontSize: 26, color: blackTextColor),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Help',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
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
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: lightBlackTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: lightColor),
                        ),
                        child: const TextField(
                          decoration: InputDecoration.collapsed(hintText: 'Eg. example@email.com'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone Number',
                        style: TextStyle(color: lightBlackTextColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: lightColor),
                            ),
                            child: InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber value) {},
                              onInputValidated: (bool value) {},
                              ignoreBlank: false,
                              textFieldController: phoneController,
                              initialValue: number,
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                              formatInput: true,
                              inputBorder: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(color: lightBlackTextColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: lightColor),
                        ),
                        child: const TextField(
                          decoration: InputDecoration.collapsed(hintText: 'Password'),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ReusableButton(
                        onPressed: () {},
                        text: 'Register',
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
                              'Register with google',
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
                            'Has any account? ',
                            style: TextStyle(fontSize: 18, color: lightBlackTextColor),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushReplacementNamed(LoginScreen.ID),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(fontSize: 18, color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            registerText!,
                            style: const TextStyle(color: lightColor, fontSize: 16),
                          ),
                          Text(
                            termsAndCondition!,
                            style: const TextStyle(color: primaryColor, fontSize: 16),
                          ),
                        ],
                      ),
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
