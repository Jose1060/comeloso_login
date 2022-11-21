import 'dart:ui';

import 'package:comeloso_login/constants/colors.dart';
import 'package:comeloso_login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bear_bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Tu dinos que te gusta, que nosotros lo buscamos",
              style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 32,
            ),
            MaterialButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage())),
              color: ColorConstants.primaryColor,
              height: 58,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(31),
              ),
              child: const Text(
                "Get started",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
