import 'package:algoriza_task/Screens/onboardingScreen/onboardingScreen.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      supportedLocales: const [
        Locale(
          "en",
        ),
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0.0,
        ),
      ),
      home: const OnboardingScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}
