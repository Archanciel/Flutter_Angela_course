// https://gist.github.com/angelabauer/c19c42b7795a185d2113f3b47263d2c0

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String? taskTwoRes = await task2();
  task3(taskTwoRes);
}

void task1() {
  String result = 'task 1 data';
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
  String result = 'task 3 data';
  print('Task 3 complete, $data');
}
