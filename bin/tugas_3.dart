import 'package:pertemuan_3/pertemuan_3.dart' as pertemuan_3;

void main() {
  for (int i = 2; i <= 201; i++) {
    bool cek = true;
    for (int j = 2; j < i ; j++) {
      if (i % j == 0) {
        cek = false;
        break;
      }
    }

    if (cek) {
      print(i);
    }
  }
}
