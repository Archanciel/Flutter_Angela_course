// https://gist.github.com/angelabauer/c19c42b7795a185d2113f3b47263d2c0

Future<void> main() async {
  print('before calling await performTasksWait()');
  await performTasksWait(); //  before calling await performTasksWait()
//                              Task 1 complete
//                              Task 2 complete
//                              Task 3 complete, task 2 data
//                              after calling await performTasksWait()
  print('after calling await performTasksWait()');

//  await performTasksThen(); //  Task 1 complete
//                              Task 3 complete, null
//                              Task 2 complete

  print('before calling performTasksWait()');
  performTasksWait(); //  before calling performTasksWait()
//                        Task 1 complete
//                        after calling await performTasksWait()
//                        Task 2 complete
//                        Task 3 complete, task 2 data
  print('after calling performTasksWait()');
}

Future<void> performTasksWait() async {
  task1();
  String? taskTwoRes = await task2();
  task3(taskTwoRes);
}

Future<void> performTasksThen() async {
  task1();
//  String? taskTwoRes = await task2();
  String? taskTwoRes;
  task2().then((value) => taskTwoRes = value);
  task3(taskTwoRes);
}

void task1() {
  print('Task 1 complete');
}

Future<String?> task2() async {
  Duration waitThreeSeconds = Duration(seconds: 3);
  String? result;

  await Future.delayed(waitThreeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String? data) {
  print('Task 3 complete, $data');
}
