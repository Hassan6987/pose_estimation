import 'package:pose_estimation/main.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:pose_estimation/widgets/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'pushed_pageA.dart';
import 'pushed_pageS.dart';
import 'pushed_pageY.dart';
import 'pushed_pageZ.dart';
class MainScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
   MainScreen(this.cameras, {super.key});
  final List<String> imagePaths = [
    'assets/images/black/15.jpg',
    'assets/images/black/6.jpg',
    'assets/images/black/12.jpg',
    'assets/images/black/23.jpg',
  ];
  static const String id = 'main_screen';
  @override


  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const Text(
              'Fit Track',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const Text(
              'Master Your Body Alignment',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 400),
                  viewportFraction: 1.0,
                ),
                items: imagePaths.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              );
            },
          ),

          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const SizedBox(
              child: SearchhBar('What pose do you wish to align?'),
            ),
          ),
          const SizedBox(height: 9),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const Text(
              'Strength Alignment',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/crunch.PNG')),
                        onPressed: () =>
                            onSelectZ(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/arm_press.PNG')),
                        onPressed: () =>
                            onSelectA(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/push_up.PNG')),
                        onPressed: () =>
                            onSelectZ(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/squat.PNG')),
                        onPressed: () =>
                            onSelectS(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/plank.PNG')),
                        onPressed: () =>
                            onSelectZ(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('images/lunge_squat.PNG')),
                        onPressed: () =>
                            onSelectZ(context: context, modelName: 'posenet'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const Text(
              'Yoga Alignment',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 130,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/yoga1.PNG')),
                          onPressed: () =>
                              onSelectZ(context: context, modelName: 'posenet'),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/yoga4.PNG')),
                          onPressed: () =>
                              onSelectY(context: context, modelName: 'posenet'),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/yoga2.PNG')),
                          onPressed: () =>
                              onSelectZ(context: context, modelName: 'posenet'),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/yoga3.PNG')),
                          onPressed: () =>
                              onSelectZ(context: context, modelName: 'posenet'),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/yoga5.PNG')),
                          onPressed: () =>
                              onSelectZ(context: context, modelName: 'posenet'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   child: RaisedButton(
          //     child: Text('Pose Estimation'),
          //     onPressed: () =>
          //         onSelectY(context: context, modelName: 'posenet'),
          //   ),
          // ),
        ],
      ),
        ),
    );
  }
}

void onSelectA({required BuildContext context, required String modelName})  {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: camera,
        title: modelName,
      ),
    ),
  );
}

void onSelectS({required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageS(
        cameras: camera,
        title: modelName,
      ),
    ),
  );
}

void onSelectY({required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageY(
        cameras: camera,
        title: modelName,
      ),
    ),
  );
}

void onSelectZ({required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageZ(
        cameras: camera,
        title: modelName,
      ),
    ),
  );
}