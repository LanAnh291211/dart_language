class Pet {
  void show() {
    print('haha');
  }
}
 //được sử dụng để buộc các function phải được định nghĩa lại để triển khai một giao diện.
class Dog implements Pet {
  // // phương thức kế thừa
  @override
  void show() {
    print('hoho');
  }
  // tạo phương thức
  void sound(){
    print('gâu gâu');
  }
}
 
void main() {
  
  var kin = Dog();

  // Gọi phương thức của lớp Pet
  // sử dụng cá thể lớp Dog
  kin.show();
  // // Gọi phương thức của lớp Pet 
  kin.sound();
}