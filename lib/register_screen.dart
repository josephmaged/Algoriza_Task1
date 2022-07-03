import 'package:algoriza_task1/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

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
  String initialCountry = 'EG';
  bool _validate = false;
  final TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
        FocusScope.of(context).unfocus();
          _text.text.isEmpty ? _validate = true : _validate = false;
      },
        child: Stack(
          children: [
            Wrap(
              children: [
                Image.asset(
                  imgBackground!,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
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
                      Center(
                        child: Column(
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
