import 'package:flutter/material.dart';
import 'package:pose_estimation/widgets/search_bar.dart';
import 'package:pose_estimation/screens/workout/meal_planner/meal_planner_view.dart';
import 'package:pose_estimation/screens/workout/sleep_tracker/sleep_tracker_view.dart';
import 'package:pose_estimation/screens/workout/workout_tracker/workout_tracker_view.dart';

class WorkOutPage extends StatelessWidget {
  const WorkOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16 ),
            const Text(
              'Activities',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            Image.asset('images/workout.PNG'),
            const SizedBox(height: 10),
            SizedBox(
              child: SearchhBar('What do you want to track today? Sleep?'),
            ),
            SizedBox(
              //width: screen.width,
              height: 412,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next screen here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkoutTrackerView()),
                      );
                    },
                  child: Container(
                    height: 200,
                    width: screen.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/white/d.jpg"), // Change the path accordingly
                        fit: BoxFit.cover, // You can change the BoxFit according to your requirement
                      ),
                     // color: const Color(0xFF953CE6),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(11.0, 25.0, 1.0, 18.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Workout Tracker',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '30 minutes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Medium activity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                         // Image.asset('images/cardio.PNG'),
                        ],
                      ),
                    ),
                  ),
            ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next screen here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MealPlannerView()),
                      );
                    },
                  child: Container(
                    height: 200,
                    width: screen.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/meal planner.jpg"), // Change the path accordingly
                        fit: BoxFit.cover, // You can change the BoxFit according to your requirement
                      ),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 25.0, 1.0, 18.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Meal Planner',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '45 minutes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Heavy activity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        //  Image.asset('images/pilates.PNG'),
                        ],
                      ),
                    ),
                  ),
            ),
                  const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to the next screen here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SleepTrackerView()),
                  );
                },
                  child: Container(
                    height: 200,
                    width: screen.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sleep-tracker.jpg"), // Change the path accordingly
                        fit: BoxFit.cover, // You can change the BoxFit according to your requirement
                      ),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sleep Tracker',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '20 minutes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Light activity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                         // Image.asset('images/yoga.PNG'),
                        ],
                      ),
                    ),
                  ),
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
