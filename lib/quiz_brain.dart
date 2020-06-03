import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'The rafflesia flower can be found in Malaysia\'s rainforests. Sarawak has the highest concentration of rafflesias.',
      false,
    ),
    Question(
      'Oranges can grow in Malaysia.',
      true,
    ),
    Question(
      'National Day in Malaysia is also known as Merdeka Day.',
      true,
    ),
    Question(
      'Malaysia was previously known as Borneo.',
      false,
    ),
    Question(
      'Malaysia is a country rich in petroleum resources. Terengganu\'s oil refinery processes the largest amount of oil per day.',
      false,
    ),
    Question(
      'Milo was originally developed in Malaysia.',
      false,
    ),
    Question(
      'The orang utan population has declined 80% in the last 75 years. Sabah and Sarawak was their original habitat in Malaysia.',
      true,
    ),
    Question(
      'Image of a flying car mean as Wawasan 2020 to Malaysians.',
      true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
    
  }
  
  void reset() {
    _questionNumber = 0;
  }


}
