void main(List<String> arguments) {
  // var list = [1, 2, 3];
  final List<dynamic> list = List.filled(5, null);
  list[1] = "Al Byan Agung";
  list[2] = 2241729999;
  assert(list.length == 5);
  assert(list[1] == "Al Byan Agung");
  print(list.length);
  print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {};

  names1.add("Al Byan Agung");
  names1.add("224172XXXX");

  names2.addAll(names1);

  print(names1);
  print(names2);
  print(names3);

  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);

  gifts['third'] = "Al Byan Agung";
  gifts['forth'] = "224172XXXX";

  nobleGases[3] = "Al Byan Agung";
  nobleGases[4] = "224172XXXX";

  mhs1['nama'] = "Al Byan Agung";
  mhs1['nim'] = "224172XXXX";

  mhs2[1] = "Al Byan Agung";
  mhs2[2] = "224172XXXX";

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  var list4 = ["Al Byan Agung", "224172XXXX"];
  print(list4);
  var list3 = [0, ...?list4];
  print(list3);
  print(list3.length);

  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = "Staff";
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var og = (1, 2);
  print(tukar(og));

  (String, int) mahasiswa = ("Al Byan Agung", 2241729999);
  print(mahasiswa);

  var mahasiswa2 = ('Al Byan Agung', a: 2241729999, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
