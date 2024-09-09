import 'package:pertemuan_3/pertemuan_3.dart' as pertemuan_3;

void main() {
  String test = "test2";
  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);

  for (var index = 1; index < 27; index++) {
    print(index);
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print("Oke");
  }
}
