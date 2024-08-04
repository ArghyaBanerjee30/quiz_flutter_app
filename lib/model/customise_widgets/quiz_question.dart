class QuizQuestion {
  final String question;
  final List<String> options;

  const QuizQuestion(this.question, this.options);

  List<String> getShuffle() {
    final shuffleList = List.of(options);
    shuffleList.shuffle();
    return shuffleList;
  }
}