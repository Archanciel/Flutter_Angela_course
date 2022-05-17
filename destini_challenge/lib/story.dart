//TODO: Step 2 - Create a new class called Story.

//TODO: Step 3 - Create 3 properties for this class, A. storyTitle to store the story text. B. choice1 to store the text for choice 1, C. choice2 to store the text for choice 2.

//TODO: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
class Story {
  final String _storyTitle;
  final String _choice1;
  final String _choice2;

  Story(
      {required String storyTitle,
      required String choice1,
      required String choice2})
      : _storyTitle = storyTitle,
        _choice1 = choice1,
        _choice2 = choice2;

  String get storyTitle => _storyTitle;
  String get choice1 => _choice1;
  String get choice2 => _choice2;
}
