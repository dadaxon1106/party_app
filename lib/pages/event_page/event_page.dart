import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:party_app/pages/email_page/email_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  bool isChecked = false;
  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController budgetController = TextEditingController();
  void checked(){
    setState(() {
      isChecked=eventNameController.text.isNotEmpty&&dateController.text.isNotEmpty&&timeController.text.isNotEmpty&&budgetController.text.isNotEmpty;
    });
  }
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
                width: 160,
                color: const Color(0xFF76A9FF),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "Event Name",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: TextField(
                controller: eventNameController,
                onChanged: (value){
                  checked();
                },
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9]+$'))],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1C1C1C),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Date",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: TextField(
                controller: dateController,
                onChanged: (value){
                  checked();
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    hintText: "DD-MM-YYYY",
                    hintStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: const Icon(Icons.calendar_today_rounded,
                        color: Color(0xFF787878))),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Time",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: TextField(
                controller: timeController,
                onChanged: (value){
                  checked();
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1C1C1C),
                  hintText: "HH:MM",
                  hintStyle: const TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: const Icon(
                    Icons.watch_later_rounded,
                    color: Color(0xFF787878),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Budget",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: TextField(
                controller: budgetController,
                onChanged: (value){
                  checked();
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1C1C1C),
                  suffixIcon: const Icon(
                    Icons.attach_money,
                    color: Color(0xFF787878),
                  ),
                ),
              ),
            ),
       const     Spacer(),
            ElevatedButton(
              onPressed: () {
                isChecked ?
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) =>const EmailPage())) : null;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isChecked ? Colors.blue :Colors.blue.withOpacity(0.5),
                fixedSize: const Size(double.maxFinite, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:const Text(
                "NEXT",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
