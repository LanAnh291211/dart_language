
import 'package:async/async.dart';
import 'dart:async';

void main() {
    var fur3 = new Future<int>(() => 45);
    Future z = Future.sync(() => print('bla'));
    print(z);
}
//Future.sync
// Trả về một tương lai chứa kết quả của việc gọi tính toán ngay lập tức.

// Nếu gọi tính toán ném, thì tương lai trả về được hoàn thành với lỗi.

// Nếu việc gọi tính toán trả về một Future <T>, thì tương lai đó sẽ được trả về.

// Nếu việc gọi tính toán trả về một giá trị không phải trong tương lai, thì một tương lai được trả về đã được hoàn thành với giá trị đó.