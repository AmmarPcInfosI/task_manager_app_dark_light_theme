import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecast_app/components/date_cards.dart';
import 'package:weather_forecast_app/components/task_card.dart';
import 'package:weather_forecast_app/screens/home_screen.dart';

class LightHomeScreen extends StatefulWidget {
  const LightHomeScreen({super.key});

  @override
  State<LightHomeScreen> createState() => _LightHomeScreenState();
}

class _LightHomeScreenState extends State<LightHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'My Events',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: const Icon(Icons.dark_mode_sharp),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('June 11, 2022',
                        style: TextStyle(color: Colors.black)),
                    Text('Today', style: TextStyle(color: Colors.black))
                  ],
                ),
                Container(
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    width: MediaQuery.sizeOf(context).width * 0.18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange.shade800,
                              Colors.deepOrangeAccent.shade100
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: const Center(
                      child: Text(
                        'Add Event',
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateCard(
                    month: 'JUN',
                    day: '11',
                    c1: Colors.deepOrange.shade800,
                    c2: Colors.deepOrangeAccent.shade100,
                    wday: 'SAT',
                    txtc: Colors.white,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '12',
                    c1: Colors.white,
                    c2: Colors.white,
                    wday: 'SUN',
                    txtc: Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '13',
                    c1: Colors.white,
                    c2: Colors.white,
                    wday: 'MON',
                    txtc: Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '14',
                    c1: Colors.white,
                    c2: Colors.white,
                    wday: 'TUE',
                    txtc: Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '15',
                    c1: Colors.white,
                    c2: Colors.white,
                    wday: 'WED',
                    txtc: Colors.black,
                  ),
                ],
              ),
            ),
            TaskCard(
                task: 'watch youtube',
                date: 'JUN 11, 2022',
                duration: '1:47 PM - 3:47 PM'),
            TaskCard(
                task: 'go to gym 🎲',
                date: 'JUN 11, 2022',
                duration: '3:46 PM-6:00 PM'),
            TaskCard(
                task: 'go to football ⚽︎ ⚽︎ ⚽︎',
                date: 'JUN 11, 2022',
                duration: '9:45 PM-11:45 PM')
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
      unselectedItemColor: Colors.red,fixedColor: Colors.redAccent,
      unselectedIconTheme: const IconThemeData(color: Colors.red),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: MediaQuery.sizeOf(context).height * 0.375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Done',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Archive',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(Icons.menu),
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Archive',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(Icons.done_rounded),
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.archive_outlined),
            ),
            label: 'Archive',
          )
        ],
      ),
    );
  }
}
