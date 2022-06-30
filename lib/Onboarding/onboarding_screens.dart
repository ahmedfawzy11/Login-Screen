import 'package:algoriza_task/Authentication/register_screen.dart';
import 'package:algoriza_task/Authentication/signin_screen.dart';
import 'package:algoriza_task/Component/default-font.dart';
import 'package:algoriza_task/Component/default_button.dart';
import 'package:algoriza_task/Onboarding/onboarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  List<onBoradingModel> onboardingItems = [
    onBoradingModel(
        Text: 'Get Food Delivery to Your\nDoorstep',
        body:
            'We Have Young and Professional Delivery\n Team That Will Bring Your Food as Soon as\n Possible to Your Doorstep',
        image: 'assets/images/1.png'),
    onBoradingModel(
        Text: 'Buy Any Food from Your\nFavorite Restaurant',
        body:
            'We are Constantly Adding Your Favourite\n Restaurant Throughout the Territory and Around \nYour Area Carefully Selected',
        image: 'assets/images/2.png'),
    onBoradingModel(
        Text: 'Get Exclusive Offer from\n Your Favorite Restaurant',
        body:
            'We are Constantly Bringing Your Favorite Food\n from Your Favorite Restaurants with Various\n Types of Offers',
        image: 'assets/images/3.png')
  ];

  var boardcontroller = PageController();

  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: DefaultButton(
              title: 'Skip',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn_Screen(),
                  ),
                );
              },
              textcolor: Colors.black,
              buttoncolor: Colors.grey.shade300,
              circularRadius: 20.0,
              width: 70,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "7",
                style: TextStyle(
                    color: CupertinoColors.activeOrange,
                    decoration: TextDecoration.none,
                    fontSize: 30),
              ),
              Text("Krave",
                  style: TextStyle(
                      color: CupertinoColors.systemGreen,
                      decoration: TextDecoration.none,
                      fontSize: 30)),
            ],
          ),
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) =>
                  buildBoardingItem(onboardingItems[index]),
              controller: boardcontroller,
              itemCount: onboardingItems.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == onboardingItems.length - 1) {
                  islast = true;
                } else {
                  islast = false;
                }
              },
            ),
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: boardcontroller,
                count: onboardingItems.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff3AB0FF),
                  dotHeight: 10.0,
                  dotWidth: 10.0,
                  //expansionFactor: 4,
                  //spacing: 5
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DefaultButton(
                  title: 'Get Started',
                  ontap: () {
                    boardcontroller.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn);
                    if (islast) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn_Screen(),
                        ),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextFont(
                    title: "Don't Have an Account?",
                    fontweight: FontWeight.w700,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: const Color(0xff3AB0FF),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildBoardingItem(onBoradingModel model) => Column(
      children: [
        Image(
          image: AssetImage(
            '${model.image}',
          ),
          height: 300,
          width: 300,
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DefaultTextFont(
                  title: model.Text!,
                  size: 25,
                  fontweight: FontWeight.bold,
                  height: 1.4,
                  titleAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                DefaultTextFont(
                  title: model.body!,
                  size: 15,
                  fontweight: FontWeight.w600,
                  titlecolor: Colors.grey.shade500,
                  height: 1.4,
                  titleAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
