import 'package:flutter/material.dart';
import 'package:quizzler_flutter/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
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
  static const List<Question> _questionLst = [
    Question(
      'You can lead a cow down stairs but not up stairs.',
      false,
    ),
    Question(
      'Approximately one quarter of human bones are in the feet.',
      true,
    ),
    Question(
      'A slug\'s blood is green.',
      true,
    )
  ];

  int _currentQuestionIndex = 0;
  final List<Icon> _iconLst = [];
  bool _stopQuestion = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                _questionLst[_currentQuestionIndex].question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onSurface: Colors.green.shade200,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: _stopQuestion
                  ? null
                  : () {
                      setState(
                        () {
                          if (_questionLst[_currentQuestionIndex].answer ==
                              true) {
                            _iconLst.add(const Icon(
                              Icons.check,
                              color: Colors.green,
                            ));
                          } else {
                            _iconLst.add(const Icon(
                              Icons.close,
                              color: Colors.red,
                            ));
                          }

                          _increaseNextQuestionIndex();
                        },
                      ); // The user picked true.
                    },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                onSurface: Colors.red.shade200,
                primary: Colors.red,
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  //                 color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: _stopQuestion
                  ? null
                  : () {
                      setState(
                        () {
                          if (_QuizPageState
                                  ._questionLst[_currentQuestionIndex].answer ==
                              false) {
                            _iconLst.add(const Icon(
                              Icons.check,
                              color: Colors.green,
                            ));
                          } else {
                            _iconLst.add(const Icon(
                              Icons.close,
                              color: Colors.red,
                            ));
                          }
                          _increaseNextQuestionIndex();
                        },
                      );
                    }, //The user picked true.
            ),
          ),
        ),
        Row(children: _iconLst),
      ],
    );
  }

  void _increaseNextQuestionIndex() {
    _currentQuestionIndex = ++_currentQuestionIndex % _questionLst.length;

    if (_currentQuestionIndex == 0) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "RFLUTTER ALERT",
        desc: "You reached the end of the question list.",
        buttons: [
          DialogButton(
            child: const Text(
              "Restart",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              setState(
                () {
                  _stopQuestion = false;
                },
              );
              Navigator.pop(context);
            },
            width: 120,
          ),
          DialogButton(
            child: const Text(
              "End",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              setState(
                () {
                  _stopQuestion = true;
                  _currentQuestionIndex = _questionLst.length - 1;
                },
              );
              Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
    }
  }
}
