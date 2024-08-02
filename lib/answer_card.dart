import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard(
      {super.key,
      required this.question,
      required this.isSelected,
      this.correctAnswerIndex,
      this.selectedAnswerIndex,
      required this.currentIndex});

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: selectedAnswerIndex != null
          ? Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                          ? Colors.red
                          : Colors.grey,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      question,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  isCorrectAnswer
                      ? buildCorrectIcon()
                      : isWrongAnswer
                          ? buildWrongIcon()
                          : const SizedBox.shrink(),
                ],
              ),
            )
          : Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                          ? Colors.red
                          : Colors.green,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    question,
                    style: const TextStyle(fontSize: 16),
                  ))
                ],
              ),
            ),
    );
  }

  Widget buildCorrectIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          color: Colors.green,
        ),
      );

  buildWrongIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
}
