// ignore_for_file: file_names

import 'package:algoriza_task/Components/defaultButton.dart';
import 'package:algoriza_task/Components/defaultDivider.dart';
import 'package:algoriza_task/Components/defaultFont.dart';
import 'package:algoriza_task/Components/defaultFormfield.dart';
import 'package:algoriza_task/Components/defaultOutlinebutton.dart';
import 'package:algoriza_task/Screens/homeScreen/homeScreen.dart';
import 'package:algoriza_task/Screens/registerScreen/registerScreen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                18.0,
              ),
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
                        title: 'Sign In',
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
                                  titlecolor: const Color(
                                    0xff3AB0FF,
                                  ),
                                ),
                                const Icon(
                                  Icons.help,
                                  color: Color(
                                    0xff3AB0FF,
                                  ),
                                  size: 20,
                                ),
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          onChanged: print,
                          showDropDownButton: true,
                          initialSelection: '+20',
                          favorite: const [
                            '+20',
                            'EG',
                          ],
                          showFlagMain: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                        title: 'Sign In',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (
                                context,
                              ) =>
                                  const HomeScreen(
                                title: "Welcome to Home Page",
                              ),
                            ),
                          );
                        },
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
                            const Text(
                              'Sign In with Google',
                            )
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
                            title: "Doesn't Has any Account?",
                            fontweight: FontWeight.w600,
                            titlecolor: Colors.grey[600],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (
                                    context,
                                  ) =>
                                      const RegisterScreen(),
                                ),
                              );
                            },
                            child: DefaultTextFont(
                              title: 'Register Here',
                              titlecolor: const Color(
                                0xff3AB0FF,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextFont(
                        title:
                            'Use the Application According to Policy Rules. Any\n Kind of Violations Will be Subject Sanction',
                        titleAlign: TextAlign.center,
                        fontweight: FontWeight.w600,
                        titlecolor: Colors.grey[400],
                        size: 14,
                        height: 2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
