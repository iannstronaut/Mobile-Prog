void main() {
  for (int i = 18; i > 8; i--) {
    print('Nama saya Fulan, sekarang berumur ${i}');
  }

  String? nama; //variabel Nama Bisa tidak diisi
  String nama2 = "Fulan"; //variabel nama 2 harus diisi terlebih dahulu karna bukan nullable
  print('${nama} ${nama2}'); //null Fulan

  late int umur; //late berfungsi agar mengizinkan variabel tidak diisi terlebih dahulu
  umur = 18; //namun jika ingin digunakan maka variabel harus diisi sebelum digunakan
  print(umur); //jika tidak diisi maka akan menghasilkan error
}
