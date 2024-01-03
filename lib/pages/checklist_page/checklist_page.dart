import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChecklistPage extends StatefulWidget {
  const ChecklistPage({super.key});

  @override
  State<ChecklistPage> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  int done = 0;
  int todo = 5;
  bool isChecked = false;
  bool isCheckedSecond = false;
  bool isCheckedThird = false;
  bool isCheckedFour = true;
  bool isCheckedFifth = false;
  bool isCheckedSixth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      appBar: AppBar(
        backgroundColor: const Color(0xFF090909),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: CupertinoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text(
          "CheckList",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sara’s Birthday Bash",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "10 Days to go",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$done",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$todo",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      "To do",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              indent: 0,
              endIndent: 20,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                      isChecked ? done++ : done--;
                      isChecked ? todo-- : todo++;
                    });
                  },
                  value: isChecked,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isChecked ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Create an e-invite",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  "Tap to create an e-invite ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isCheckedSecond = !isCheckedSecond;
                      isCheckedSecond ? done++ : done--;
                      isCheckedSecond ? todo-- : todo++;
                    });
                  },
                  value: isCheckedSecond,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isCheckedSecond ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Invite guests",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  "Tap to invite guests",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isCheckedThird = !isCheckedThird;
                      isCheckedThird ? done++ : done--;
                      isCheckedThird ? todo-- : todo++;
                    });
                  },
                  value: isCheckedThird,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isCheckedThird ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Hire a decorator",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  "Tap to view vendors ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isCheckedFour = !isCheckedFour;
                      isCheckedFour ? done++ : done--;
                      isCheckedFour ? todo-- : todo++;
                    });
                  },
                  value: isCheckedFour,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isCheckedFour ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Rent Board Games",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  "Tap to view vendors ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isCheckedFifth = !isCheckedFifth;
                      isCheckedFifth ? done++ : done--;
                      isCheckedFifth ? todo-- : todo++;
                    });
                  },
                  value: isCheckedFifth,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isCheckedFifth ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Order food",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF1C1C1C),
              ),
              child: ListTile(
                leading: Checkbox(
                  onChanged: (value) {
                    setState(() {
                      isCheckedSixth = !isCheckedSixth;
                    });
                  },
                  value: isCheckedSixth,
                  side: const BorderSide(color: Colors.white, width: 1),
                  fillColor: MaterialStateProperty.all(
                      isCheckedSixth ? Colors.white : const Color(0xFF1C1C1C)),
                  checkColor: Colors.black,
                ),
                title: const Text(
                  "Tap to add a new item to the list",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
