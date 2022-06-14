// yield Nó được sử dụng để phát ra các giá trị từ trình tạo không đồng bộ hoặc đồng bộ hóa.
Stream<int> count(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// yield* Nó ủy quyền cuộc gọi đến một trình tạo khác và sau khi trình tạo đó ngừng sản xuất các giá trị, nó sẽ tiếp tục tạo các giá trị của chính nó.
Stream<int> count1(int n) async* {
  if (n > 0) {
    await Future.delayed(Duration(seconds: 3));
    yield n;
    yield* count1(n - 1);
  }
}
Future<> myTypedFuture(int id, int duration) async {
  await Future.delayed(Duration(seconds: 5));
  print('Delay complete for Future $id');
}

 
// await Future.delayed(Duration(seconds: 5));
void main() {
  count(5).forEach(print);

  count1(5).forEach(print);
}
