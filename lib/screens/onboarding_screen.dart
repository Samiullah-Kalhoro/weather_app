import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:weather_app/main.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<OnBoardingData> onBoardingData = [
    OnBoardingData(
      title: "Discover Your World, Rain or Shine",
      description:
          "Our weather app makes exploring the world even better. Get detailed weather information for any location,so you can plan your next adventure, whether it's sunny skies or a rainy day.",
      image: 'assets/images/onboarding/1.png',
    ),
    OnBoardingData(
      title: "Explore the World in All Weather",
      description:
          "No matter where your travels take you, our weather app has got you covered. Get real-time weather information for any location, so you can explore the world with confidence, rain or shine.",
      image: 'assets/images/onboarding/2.png',
    ),
    OnBoardingData(
      title: "Adventure Awaits in Any Forecast",
      description:
          "Don't let the weather hold you back from your next adventure. With our weather app, you can discover new places and experience new things no matter what the forecast looks like. Get detailed weather information and be prepared for any conditions.",
      image: 'assets/images/onboarding/3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');
    return Scaffold(
      body: IntroductionScreen(
        bodyPadding: const EdgeInsets.only(top: 100),
        controlsMargin: const EdgeInsets.all(8.0),
        isTopSafeArea: true,
        isBottomSafeArea: true,
        showSkipButton: true,
        pages: [
          PageViewModel(
            title: onBoardingData[0].title,
            body: onBoardingData[0].description,
            image: Image.asset(
              onBoardingData[0].image,
              width: 250,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
          PageViewModel(
            title: onBoardingData[1].title,
            body: onBoardingData[1].description,
            image: Image.asset(
              onBoardingData[1].image,
              height: 320,
              width: 232,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
          PageViewModel(
            title: onBoardingData[2].title,
            body: onBoardingData[2].description,
            image: Image.asset(
              onBoardingData[2].image,
              height: 320,
              width: 232,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
        ],
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onDone: () {
          box.put('introduction', false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const HomePage(),
            ),
          );
        },
        onSkip: () {
          box.put('introduction', false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const HomePage(),
            ),
          );
        },
        done: const Icon(Icons.done_outline_rounded),
        next: const Icon(Icons.navigate_next_outlined),
        skip: const Text(
          "Skip",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class OnBoardingData {
  OnBoardingData({
    required this.title,
    required this.description,
    required this.image,
  });

  String description;
  String image;
  String title;
}
