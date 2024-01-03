import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:party_app/pages/people_page/people_page.dart';

class OccasionView extends StatefulWidget {
  const OccasionView({super.key});

  @override
  State<OccasionView> createState() => _OccasionViewState();
}

class _OccasionViewState extends State<OccasionView> {
  bool isPressedFirst = false;
  bool isPressedSecond = false;
  bool isPressedThird = false;
  bool isPressedFourth = false;
  bool isPressedFifth = false;

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
                width: 40,
                color: const Color(0xFF76A9FF),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "What is the occasion?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPressedFirst
                          ? const Color(0xFF251B27)
                          : const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(8),
                      border: isPressedFirst
                          ? Border.all(width: 1, color: const Color(0xFFD898FF))
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedFirst = !isPressedFirst;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/container.svg"),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Birthday",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPressedSecond
                          ? const Color(0xFF251B27)
                          : const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(8),
                      border: isPressedSecond
                          ? Border.all(width: 1, color: const Color(0xFFD898FF))
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedSecond = !isPressedSecond;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/heart_occasion.png",
                            height: 44,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Anniversary",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPressedThird
                          ? const Color(0xFF251B27)
                          : const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(8),
                      border: isPressedThird
                          ? Border.all(width: 1, color: const Color(0xFFD898FF))
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedThird = !isPressedThird;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/dish.png",
                            height: 44,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Dinner",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPressedFourth
                          ? const Color(0xFF251B27)
                          : const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(8),
                      border: isPressedFourth
                          ? Border.all(width: 1, color: const Color(0xFFD898FF))
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedFourth = !isPressedFourth;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/bottle.png",
                            height: 44,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Meet up",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPressedFifth
                          ? const Color(0xFF251B27)
                          : const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(8),
                      border: isPressedFifth
                          ? Border.all(width: 1, color: const Color(0xFFD898FF))
                          : null,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedFifth = !isPressedFifth;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/stars.png",
                            height: 44,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Other",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 100,
                )),
              ],
            ),
            const Spacer(),
            CupertinoButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => PeoplePage()));
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isPressedFirst ||
                            isPressedSecond ||
                            isPressedThird ||
                            isPressedFourth ||
                            isPressedFifth
                        ? Colors.blue
                        : Colors.blue.withOpacity(0.5)),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
