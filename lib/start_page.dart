import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_quiz/question_page.dart';
import 'package:football_quiz/reusable_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            color: Color(0xFF58C2C5),
          ),
          child: const Center(
            child: Text(
              '!شروع بازی',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              children: [
                GestureDetector(
                  child: ReusableCard(
                    text: 'بین المللی',
                    sText: '⚽ بیایید با صحنه بزرگ شروع کنیم',
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionPage()),);
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: ReusableCard(
                    text: 'لیگ برتر انگلیس',
                    sText: '⚽️ بزرگترین لیگ جهان؟',
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionPage()),);
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableCard(
                  text: 'مسابقات اروپایی',
                  sText: ' مسابقات باشگاهی بزرگتر\n          ⚽ ازاین نمی شود',
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableCard(
                  text: 'فوتبال جهانی',
                  sText: 'بیایید کمی برای دورآخر\n        ⚽ منشعب شویم',
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
