import 'package:burns_depression_test/Controllers/QuestionSource.dart';
import 'package:flutter/material.dart';

void main() => runApp(DepressionTest());

class DepressionTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String questionText = "Soru";
  QuestionSource src = QuestionSource();

  @override
  Widget build(BuildContext context) {
    questionText = src.getQuestion();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: createButtons(),
        //TODO: Add a Row here as your score keeper

    );
  }

  List<Widget> createButtons() {
    List<Widget> list = List();
   List<ColorSwatch<int>> colors=[Colors.orangeAccent,Colors.orange,Colors.deepOrangeAccent,Colors.deepOrange,Colors.redAccent,Colors.red];
   List<String> texts=["Hiç","Biraz","Orta Derecede","Çok Fazla","Aşırı Derecede"];
    list.add( Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),);

    for (int i = 0; i < 5; i++) {
      list.add(Expanded(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: FlatButton(
            textColor: Colors.white,
            color: colors[i],
            child: Text(
              texts[i],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              setState(() {
                src.setScore(i);
                questionText=src.getQuestion();
              });

            },
          ),
        ),
      ));
    }
    return list;
  }
}
