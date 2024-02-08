// generic adalah kemampuan untuk menambah parameter type pada saat  membuat class atau method.
// berbeda dari tipe data yang biasa digunakan di dalam class dan function, generic memungkinkan 
// untuk kita mengubah-ubah tipe data sesuai dengan yang diinginkan

// generic class
class MyData<T> {
  T data;
  
  MyData(this.data);
}

// generic object
void main(){
  var datastring = MyData("aufa");
  var datanumber =MyData("21");
  var databool = MyData(false);
  
  print(datastring.data);
  print(datanumber.data);
  print(databool.data);
}


// generic class multiple parameter type
// untuk generic ini boleh lebih dati satu, tapi harus menggunakan nama type berbeda 
class Data<A, B> {
  A first;
  B second;
  
  Data(this.first, this.second);
}
// generic object multiple parameter type
void main(){
  var data1 = Data("aufa", 21);
  var data2 = Data<String, int>("farid", 21);
  
  print(data1.first);
  print(data1.second);
  
  print(data2.first);
  print(data2.second);
}

// generic pada function
class generic{
  static int count<T>(List<T> list) {
    return list.length;
  }
}
// generic object
void main() {
  var number = [5, 3, 5, 7, 2];
  var name = ["aufa", "farid"];
  
  print(generic.count(number));
  print(generic.count(name));
}
