// Dart program to show the usage of typedef
//  Typedef trong Dart được sử dụng để tạo danh tính (bí danh) do người dùng xác định cho một hàm 
// chúng ta có thể sử dụng danh tính đó thay cho hàm trong mã chương trình. 
//Khi chúng ta sử dụng typedef, chúng ta có thể xác định các tham số của hàm.
// định nghĩa bí danh
typedef TypeDef(int a, int b);
 
//hàm 
TypeDef1(int a, int b) {
  print("Đây là 1");
  print("$a và $b là số may mắn");
}
 
//hàm
TypeDef2(int a, int b) {
  print("Đây là 2");
  print("$a + $b có tổng là ${a + b}.");
}
 
// Main Function
void main()
{
  // Sử dụng tên bí danh để xác định
  // luckynumber có hàm TypeDef1
    TypeDef luckynumber = TypeDef1;
  // Calling number
  luckynumber(1,2);
   
  // // Định nghĩa lại luckynumber 
  // with TypeDef2 function
  luckynumber = TypeDef2;
  // Calling  luckynumber
  luckynumber(3,4);
}