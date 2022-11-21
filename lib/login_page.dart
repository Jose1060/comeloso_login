import 'package:comeloso_login/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(
              height: height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 70,
                    child: Image(image: AssetImage("lib/assets/bear_logo.png")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Miles de restaurantes a tu disposicion",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height / 1.9,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 40,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Login Account",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          const SizedBox(
                            height: 40,
                            child: InputLogin(
                                hint: "Username or Email",
                                icon: Icons.email_outlined),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const SizedBox(
                            height: 40,
                            child: InputLogin(
                                hint: "Password",
                                icon: Icons.visibility_outlined),
                          ),
                          SwitchListTile.adaptive(
                              value: true, onChanged: ((value) {}), title: Text("Remember me", style: ,),),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputLogin extends StatelessWidget {
  const InputLogin({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(color: ColorConstants.starterWhite),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(color: ColorConstants.primaryColor),
          ),
          suffixIcon: Icon(icon)),
    );
  }
}
