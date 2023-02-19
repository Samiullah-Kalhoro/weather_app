import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';

import '../widgets/navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController _globalController = Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: const CustomBottomNav(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  const Text(
                    "Karachi",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "19\u00b0",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Mostly Clear",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "H:24\u00b0",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "L:24\u00b0",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                'assets/images/House.png',
                fit: BoxFit.contain,
              ),
              // const CustomBottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
