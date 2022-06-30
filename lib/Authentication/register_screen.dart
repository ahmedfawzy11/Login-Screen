import 'package:algoriza_task/Authentication/signin_screen.dart';
import 'package:algoriza_task/Component/default-font.dart';
import 'package:algoriza_task/Component/default_button.dart';
import 'package:algoriza_task/Component/default_divider.dart';
import 'package:algoriza_task/Component/default_formfield.dart';
import 'package:algoriza_task/Component/default_outlinebutton.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextFont(
                    title: 'Welcome to Food Delivery',
                    fontweight: FontWeight.w600,
                    titlecolor: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextFont(
                        title: 'Register',
                        fontweight: FontWeight.bold,
                        size: 30,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                DefaultTextFont(
                                  title: 'Help',
                                  fontweight: FontWeight.w600,
                                  titlecolor: const Color(0xff3AB0FF),
                                ),
                                const Icon(
                                  Icons.help,
                                  color: Color(0xff3AB0FF),
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultTextFont(
                        title: 'Email',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultFormField(
                        title: 'example@email.com',
                        paddingHorizontal: 20,
                        keyType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextFont(
                        title: 'Phone Number',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultFormField(
                        title: '123456789',
                        paddingVertical: 10,
                        keyType: TextInputType.number,
                        prefixIcon: CountryCodePicker(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          onChanged: print,
                          showDropDownButton: true,
                          initialSelection: '+20',
                          favorite: const ['+20', 'EG'],
                          showFlagMain: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextFont(
                        title: 'Password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultFormField(
                        title: 'Password',
                        paddingHorizontal: 20,
                        keyType: TextInputType.text,
                        isPassword: true,
                        SuffixIcon: const Icon(Icons.remove_red_eye ,color:Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                        title: 'Register',
                        ontap: () {},
                        circularRadius: 0,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DefaultDivider(
                        title: 'Or',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DefaultOutlineButton(
                        ontap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google-logo-9822.png',
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Sign In with Google')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextFont(
                            title: "Has any Account?",
                            fontweight: FontWeight.w600,
                            titlecolor: Colors.grey[700],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn_Screen(),
                                ),
                              );
                            },
                            child: DefaultTextFont(
                              title: 'Sign in Here',
                              titlecolor: const Color(0xff3AB0FF),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextFont(
                        title:
                        'By Registering Your Account. You are Agree to Our ',
                        titleAlign: TextAlign.center,
                        fontweight: FontWeight.w600,
                        titlecolor: Colors.grey[500],
                        size: 14,
                        height: 2,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultTextFont(
                              title: 'Terms and Conditions',
                              titleAlign: TextAlign.center,
                              titlecolor: const Color(0xff3AB0FF),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
