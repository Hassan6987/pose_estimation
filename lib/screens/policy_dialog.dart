import 'package:flutter/material.dart';
class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Privacy Policy",
          style: TextStyle(fontSize: 28,
              color: Colors.blue,

              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/aboutus (2).png"), // Replace with your image path
              fit: BoxFit.cover,colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.dstATop,
            ),
            ),
          ),
            child: SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 00, 00),
            child: Column(
            children: <Widget>[

              SizedBox(height: 10),
            Text(
              ' Privacy Policy for FIT TRACK',
              style: TextStyle(
                color: Colors.white,
                // backgroundColor: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: Text(
               'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.'

             'We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy..'
                '\nWhile using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:'

              '\n- Email address'

              '\n- First name and last name'

              '\n- Usage Data',

                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),

            ),
    ],
    ),
    ),
        ),
      ),
      ),
    );
  }
}
