import 'dart:async';

void createCount() async {
  var count1 = await getCount1();
  print(' $count1');
  var count2 = await getCount2();
  print(' $count2');
}

Future<String> getCount1() => Future.delayed(Duration(seconds: 6), () => 'Anh có đánh rơi nhịp nào không :v ');

Future<String> getCount2() => Future.delayed(Duration(seconds: 3), () => 'Không em :)))');

void countSeconds(s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

void main() {
  countSeconds(5);
  createCount();
}
