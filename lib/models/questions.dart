class QuizQuestion
{
 const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffled()
  {
    final shufflelist=List.of(answers);
    shufflelist.shuffle();
    return shufflelist;
  }
}