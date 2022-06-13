//sử dụng từ khóa late để khai báo các biến sẽ được khởi tạo sau này
class Reason {
  late String lydo;
}

void main() {
    Reason reason = Reason();
    reason.lydo = "Nga";

    print(reason.lydo);
}