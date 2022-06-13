import 'dart:async';
//Lập trình bất đồng bộ cho phép chương trình thực hiện công việc trong khi chờ việc khác hoàn thành.

// + async : được đặt trước khối chứa await, nó đánh dấu là bất đồng bộ.
void createCount() async {
//+ await : được đặt bên trong async và đặt ở trước các phương thức thực hiện
  var count1 = await getCount1();
  print(' $count1');
  var count2 = await getCount2();
  print(' $count2');
}
//  Future : dùng cho kiểu dữ liệu trả về.
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
