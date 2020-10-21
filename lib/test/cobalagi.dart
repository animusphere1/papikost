import 'dart:math';

class Nama {
  jalan() {
    print("Nama Saya Adalah");
  }
}

class Namasaya extends Nama {
  String nama = 'fajar';

  @override
  String jalan() {
    return this.nama;
  }
}

List<int> angkalist = [15, 22, 13, 44];

void main() {
  Nama nama = Nama();
  Namasaya nama2 = Namasaya();

  int hasil = angkalist[Random().nextInt(angkalist.length)];
  print(hasil);
  nama.jalan();
  print(nama2.jalan());
  // print(nama2.jalan());
}
