void main() {
  String namaLengkap = "Farid Fitriansah Alfarizi";
  String NIM = "2241720055";
  
  bool isPrime(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  
  for (int num = 0; num <= 201; num++) {
    if (isPrime(num)) {
      print("$num adalah bilangan prima.");
      print("Nama: $namaLengkap");
      print("NIM: $NIM");
    }
  }
}