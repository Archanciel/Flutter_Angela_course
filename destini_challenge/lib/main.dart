import 'package:destini_challenge/story_brain.dart';
import 'package:flutter/material.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final StoryBrain _storyBrain = StoryBrain();
  bool _choice1Visible = true;
  bool _choice2Visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('images/background.png'),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              //TODO: Step 1 - Add background.png to this Container as a background image.
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 12,
                      child: Center(
                        child: Text(
                          //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                          _storyBrain.getStory(),
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Visibility(
                      visible: _choice1Visible,
                        child: ElevatedButton(
                          onPressed: () {
                            //Choice 1 made by user.
                            //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                            setState(() {
                              _choice1Visible = _storyBrain.nextStory(1);
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          child: Text(
                            //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                            _storyBrain.getChoice1(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      flex: 2,
                      //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                      //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                      child: Visibility(
                        visible: _choice2Visible,
                        child: ElevatedButton(
                          onPressed: () {
                            //Choice 2 made by user.
                            //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                            setState(() {
                              _choice2Visible = _storyBrain.nextStory(2);
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          child: Text(
                            //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                            _storyBrain.getChoice2(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/