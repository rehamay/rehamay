class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "How many continents are there on earth?",
    [
      Answer("20", false),
      Answer("15", false),
      Answer("7", true),
      Answer("50", false),
    ],
  ));

  list.add(Question(
    "How many months in a year have only 29 days?",
    [
      Answer("1, but not every year", true),
      Answer("3", false),
      Answer("4", false),
      Answer("1", false),
    ],
  ));

  list.add(Question(
    "Which among the following produces honey?",
    [
      Answer("wasp", false),
      Answer("hornet", false),
      Answer("ant", false),
      Answer("honey bee", true),
    ],
  ));

  list.add(Question(
    "0 multiplied by 50 =?",
    [
      Answer("0", true),
      Answer("50", false),
      Answer("500", false),
      Answer("55", false),
    ],
  ));

  list.add(Question(
    "How many zeroes are there in 1 million?",
    [
      Answer("6", true),
      Answer("5", false),
      Answer("3", false),
      Answer("4", false),
    ],
  ));

  list.add(Question(
    "If you were given 7 chocolates and then you gave 2 to your friend and 2 to your mother, how many do you have?",
    [
      Answer("3", true),
      Answer("7", false),
      Answer("4", false),
      Answer("1", false),
    ],
  ));
  list.add(Question(
    "If you had 6 apples, then you ate 3; how many do you have left?",
    [
      Answer("2", false),
      Answer("45", false),
      Answer("3", true),
      Answer("1", false),
    ],
  ));
  list.add(Question(
    "What are baby cats called?",
    [
      Answer("meow", false),
      Answer("crew", false),
      Answer("kitten", true),
      Answer("cat", false),
    ],
  ));

  return list;
}