// With được sử dụng để bao gồm các Mixin. Mixin là một loại cấu trúc khác, chỉ có thể được sử dụng với từ khóa with.
// Mixin là một cách sử dụng lại các phương thức của một lớp trong nhiều phân cấp lớp. 
//Mixin có thể được hiểu là các lớp trừu tượng được sử dụng để sử dụng lại các phương thức trong các lớp khác nhau có các chức năng / thuộc tính tương tự.
mixin Pet {
  void show(){
    print('he');
  }
}
 
// mixin with name temp
mixin Animal {
  void sound(){
    print("gâu");
  }
}
 
// mixin type used with keyword
class Dog with Pet, Animal{
  @override
  void show(){
    print('có thể ghi đè nếu cần');
  }
}
 
void main(){
  var dog = Dog();
  dog.show();
  dog.sound();
}