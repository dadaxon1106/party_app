import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../glasses_page/glasses_page.dart';
class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  bool isSelectedFirst = false;
  bool isSelectedSecond = false;
  bool isSelectedThird = false;
  bool isSelectedFour = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
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
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
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
                width: 240,
                color: const Color(0xFF76A9FF),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/icons/cake.svg",
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "What will be the food arrangements ?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedFirst = !isSelectedFirst;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: isSelectedFirst
                      ? Border.all(color: const Color(0xFF76A9FF), width: 1)
                      : null,
                  color: isSelectedFirst
                      ? const Color(0xFF292E36)
                      : const Color(0xFF1C1C1C),
                ),
                child: const Text(
                  "Order In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedSecond = !isSelectedSecond;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  border: isSelectedSecond
                      ? Border.all(color: const Color(0xFF76A9FF), width: 1)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                  color: isSelectedSecond
                      ? const Color(0xFF292E36)
                      : const Color(0xFF1C1C1C),
                ),
                child: const Text(
                  "Home cooked food",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedThird = !isSelectedThird;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: isSelectedThird
                      ? Border.all(color: const Color(0xFF76A9FF), width: 1)
                      : null,
                  color: isSelectedThird
                      ? const Color(0xFF292E36)
                      : const Color(0xFF1C1C1C),
                ),
                child: const Text(
                  "Book a caterer",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedFour = !isSelectedFour;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: isSelectedFour
                      ? Border.all(color: const Color(0xFF76A9FF), width: 1)
                      : null,
                  color: isSelectedFour
                      ? const Color(0xFF292E36)
                      : const Color(0xFF1C1C1C),
                ),
                child: const Text(
                  "Potluck",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),

            const Spacer(),
            ElevatedButton(
              onPressed: () {
                isSelectedSecond || isSelectedFirst
                    ? Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const GlassPage(),
                    ))
                    : null;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelectedFirst || isSelectedSecond
                    ? Colors.blue
                    : Colors.blue.withOpacity(0.5),
                fixedSize: const Size(double.maxFinite, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "NEXT",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
