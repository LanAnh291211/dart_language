//kiểu liệt kê (kiểu liệt kê thứ tự enumerated) được sử dụng để liệt kê các giá trị hằng số
enum Weather { 

   dep, 
   xau, 
   mua, 
   gio 
}  
void main() { 
   print(Weather.values); 
   Weather.values.forEach((v) => print('hôm nay trời: $v, chi so: ${v.index}'));
   print('trời đẹp: ${Weather.dep}, ${Weather.dep.index}'); 
   print('trời đẹp chỉ số: ${Weather.values[1]}'); 
}