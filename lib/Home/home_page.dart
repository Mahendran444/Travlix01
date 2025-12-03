import 'package:flutter/material.dart';
import 'package:travlix/Home/travellersfav_page.dart';

import 'Home_Acc/travellerschoice_page.dart';
import 'explore_page.dart';
import 'hotel_page.dart';
import 'inspiration_page.dart';



class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}


class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Where to?",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Mono',
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 20),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: TextField(
                readOnly: true,
                onTap: () {
                  // Navigator.push(
                  //   // context,
                  //   // MaterialPageRoute(
                  //   //   builder: (context) => searchpage(getValue: {}),
                  //   // ),
                  // );
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Places to go, things to do, hotels...",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.white10,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.add_location_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      " Looking for something\n nearby?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Allow location access",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            travellerFavourite(),
            explorethings(),
            travellerchoice(),
            inspirationnexttrip(),
            hotels(),
          ],
        ),
      ),
    );
  }
}
