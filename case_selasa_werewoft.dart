import 'dart:io';

void main() {
  String? nama;
  String? peran;
  List daftarPeran = ['penyihir', 'guard', 'werewolf'];

  stdout.write('Masukan nama :');
  nama = stdin.readLineSync();
  stdout.writeln("daftar peran tersedia : $daftarPeran");
  stdout.write('Masukan peran anda :');
  peran = stdin.readLineSync()!.toLowerCase();

  bool checkPeran = daftarPeran.any((element) => peran!.contains(element));

  if (nama!.isEmpty) {
    stdout.write('Nama harus di isi\n');
  } else if (checkPeran == false) {
    stdout.write("Pilih peran mu untuk memulai game\n");
  } else {
    stdout.write("Nama anda $nama dan memiliki peran seorang $peran");
  }
}
