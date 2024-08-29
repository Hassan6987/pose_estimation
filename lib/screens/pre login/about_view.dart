import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'option_widget.dart';
import 'package:pose_estimation/screens/login/signin_screen.dart';
import 'welcome_view.dart';


class AboutView extends StatelessWidget {
  static const kFirstColor = Color(0xFF00aaff);
  static const kSecondColor = Color(0xFF232441);
  static const kThirdColor = Color(0xFF131429);
  static const kAppBarBackgroundColor = Color(0xFF252638);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(
                      text: 'FIT\t',
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'TRACK',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: "I'm\nBeginner",
                          detail: "I have trained several times",
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 20),
                        OptionWidget(
                          state: "I'm\nExpert",
                          detail: "I have trained more times",
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  buildFooter(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => WelcomeView()));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "Back",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SignInScreen()));
          },
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kFirstColor,
            ),
            child: const Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
