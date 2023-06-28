import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Dr. B. R. Ambedkar is the father of the Indian Constitution', true),
    Question('Jawaharlal Nehru was the first Prime Minister of India?', true),
    Question('14 is a prime number', false),
    Question('1 is a prime number',false),
    Question('Mercury is closest to Sun',true),
    Question('Pacific is the largest ocean in the world',true),
    Question('At 100 degrees Celcius water boils.',true),
    Question('Taylor Swift wrote Romeo and Juliet.',false),
    Question('Citric Acid is present in Lemon',true),
    Question('Droupadi Murmu is the president of India',true),
    Question('0 is an even number',true),
    Question('0 can be positive or negative',false),
    Question('Every integer is a whole number',false),
    Question('Every whole number is an integer',true),
    Question('Helium gas which is filled in balloons?', true),
    Question('Srinagar the summer capital of Jammu and Kashmir?', true),
    Question('Oxygen consistute most of our atmosphere', false)


  ];

  void nextQuestion()
  {
    if (_questionNumber < _questionBank.length - 1)
      _questionNumber++;
  }
  String getQuestionText()
  {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if (_questionNumber >= _questionBank.length - 1)
    {
      print('Now returning true');
      return true;
    }
    else {
      return false;
    }

  }
  void reset() {
    _questionNumber = 0;
  }
}

