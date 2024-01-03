import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:party_app/pages/event_page/event_page.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  bool isPressedFirst = false;
  bool isPressedSecond = false;
  bool isPressedThird = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Create a New Event",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: double.maxFinite,
              height: 4,
              color: const Color(0xFF474747),
              child: Container(
                height: 4,
                width: 100,
                color: const Color(0xFF76A9FF),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "What is the size of the guest list? ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isPressedFirst
                          ? const Color(0xFF271C1B)
                          : const Color(0xFF1C1C1C),
                      border: isPressedFirst
                          ? Border.all(color: const Color(0xFFFF9A98), width: 1)
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedFirst = !isPressedFirst;
                        });
                      },
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/people_group1.svg",
                              width: 20,
                              height: 30,
                            ),
                            const SizedBox(height: 9),
                            const Text(
                              "Small",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "(4-20 guests)",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isPressedSecond
                          ? const Color(0xFF271C1B)
                          : const Color(0xFF1C1C1C),
                      border: isPressedSecond
                          ? Border.all(color: const Color(0xFFFF9A98), width: 1)
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedSecond = !isPressedSecond;
                        });
                      },
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/people_group2.svg",
                              width: 20,
                              height: 40,
                            ),
                            const SizedBox(height: 9),
                            const Text(
                              "Medium",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "(20-60 guests)",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isPressedThird
                          ? const Color(0xFF271C1B)
                          : const Color(0xFF1C1C1C),
                      border: isPressedThird
                          ? Border.all(color: const Color(0xFFFF9A98), width: 1)
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedThird = !isPressedThird;
                        });
                      },
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/people_group3.svg",
                              width: 20,
                              height: 42,
                            ),
                            const SizedBox(height: 9),
                            const Text(
                              "Large",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "(60+ guests)",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>EventPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isPressedFirst || isPressedSecond || isPressedThird
                        ? Colors.blue
                        : Colors.blue.withOpacity(0.5),
                fixedSize: const Size(double.maxFinite, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "NEXT",
                style: TextStyle(
                  color: isPressedFirst || isPressedSecond || isPressedThird
                      ? Colors.white
                      : Colors.white12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
