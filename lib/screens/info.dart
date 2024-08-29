import 'package:flutter/material.dart';



class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "About Us",
          style: TextStyle(fontSize: 28,
              color: Colors.blue,

              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              width: 390,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('images/aboutus (2).png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // SizedBox(height: 10),

            Text(
              ' Fit Track',
              style: TextStyle(
                color: Colors.blue,
                // backgroundColor: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: Text(
                'Fit Tech revolutionizes the way we approach fitness and wellness by harnessing the power of computer vision'
                    ' technology. Designed specifically for yoga enthusiasts and gym-goers, Fit Tech offers cutting-edge pose estimation'
                    ' capabilities to enhance your workout experience.',
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

    );
  }
}
