// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

void main() {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var record = (5, 10);
  // print('Sebelum tukar: $record');
  // var result = tukar(record);
  // print('Sesudah tukar: $result');

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Farid Fitriansah Alfarizi', 2241720055);
  // print(mahasiswa);
  
  var mahasiswa2 = ('Farid Fitriansah Alfarizi', a: 2241720055, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Farid Fitriansah Alfarizi'
  print(mahasiswa2.a);  // Prints 2241720055
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}