import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: w,
          height: h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: h * 0.04,),
                Container(
                  // color: Colors.black.withOpacity(0.2),
                  width: w,
                  height: h * 0.20,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Text(
                        'Best Shoes, \nfor the modern walkers',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[900],
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      Text(
                        'Polish up your moves to make yourself more beautiful with this app',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0,),
                Container(
                  color: Colors.black.withOpacity(0.2),
                  width: w,
                  height: h * 0.5,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: const Image(
                    image: AssetImage('assets/img/hero_img.png'),
                  ),
                ),
                const SizedBox(height: 70.0,),
                Container(
                  // color: Colors.black.withOpacity(0.2),
                  width: w,
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      )
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        fontSize: 22.0
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
