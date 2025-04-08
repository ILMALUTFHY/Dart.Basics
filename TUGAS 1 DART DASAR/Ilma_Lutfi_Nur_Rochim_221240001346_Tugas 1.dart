
import 'dart:io';
import 'dart:math';
import 'dart:async';

// ---------------------------------------------
// 🧑 Nama  : Ilma Lutfi Nur Rochim
// 🆔 NIM   : 221240001346
// 📁 File  : Ilma_Lutfi_Nur_Rochim_Explorer2025.dart
// 📅 Dibuat: 2025-04-08
// ---------------------------------------------
// 🚀 Dart Mission: Explorer 2025 Edition
// ---------------------------------------------

void main() async {
  print("\x1B[35m🚀 Selamat datang di Dart Mission: Explorer 2025\x1B[0m");
  print("🔍 Pilih misi (1 - 11) atau 0 untuk keluar:");
  print("""
  1️⃣ Misi 1: Cetak Nama Penjelajah
  2️⃣ Misi 2: Hello dengan Kutipan
  3️⃣ Misi 3: Konstanta Abadi
  4️⃣ Misi 4: Kalkulator Bunga Sederhana
  5️⃣ Misi 5: Penangkap Angka Ajaib
  6️⃣ Misi 6: Rangkaian Nama
  7️⃣ Misi 7: Operasi Matematika Dasar
  8️⃣ Misi 8: Tukar Posisi A & B
  9️⃣ Misi 9: Penghapus Spasi
  🔟 Misi 10: Konversi String ke Integer
  1️⃣1️⃣ Misi 11: Pembagi Tagihan
  0️⃣ Keluar
  """);

  stdout.write("🎮 Pilihanmu: ");
  int pilihan = int.parse(stdin.readLineSync()!);

  await loadingEffect();

  switch (pilihan) {
    case 1: misi1(); break;
    case 2: misi2(); break;
    case 3: misi3(); break;
    case 4: misi4(); break;
    case 5: misi5(); break;
    case 6: misi6(); break;
    case 7: misi7(); break;
    case 8: misi8(); break;
    case 9: misi9(); break;
    case 10: misi10(); break;
    case 11: misi11(); break;
    case 0:
      print("👋 Sampai jumpa di misi selanjutnya!");
      return;
    default:
      print("⚠️ Pilihan tidak tersedia.");
  }

  print("\n🔚 Terima kasih sudah menjelajah bersama Dart Explorer 2025!");
}

Future<void> loadingEffect() async {
  stdout.write("⏳ Memuat misi");
  for (int i = 0; i < 3; i++) {
    await Future.delayed(Duration(milliseconds: 400));
    stdout.write(".");
  }
  print("\n");
}

// ---------------------------------------------
// 💥 Misi-Misi Dart Explorer 2025
// ---------------------------------------------

void misi1() {
  print("🎯 Misi 1: Cetak Nama Penjelajah");
  String nama = "Ilma Lutfi Nur Rochim";
  print("🪪 Nama Saya: \$nama");
  print("🌟 Siap menjelajah dunia Dart!");
}

void misi2() {
  print("🎯 Misi 2: Hello dengan Kutipan");

  stdout.write("👤 Masukkan nama kamu: ");
  String nama = stdin.readLineSync()!;

  print('\n📢 "Hello, saya "\$nama"."');
  print("💬 'Hello, saya '\$nama'.'");
}

void misi3() {
  print("🎯 Misi 3: Menampilkan Konstanta");

  const int angka = 2025;
  print("🔒 Konstanta 'angka' bernilai: \$angka");
  print("💡 Konstanta tidak bisa diubah setelah ditetapkan.");
}

void misi4() {
  print("🎯 Misi 4: Hitung Bunga Sederhana");

  stdout.write("💵 Pokok pinjaman (Rp): ");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("📆 Waktu (tahun): ");
  double t = double.parse(stdin.readLineSync()!);

  stdout.write("📈 Suku bunga (%): ");
  double r = double.parse(stdin.readLineSync()!);

  double bunga = (p * t * r) / 100;
  print("💰 Total bunga: Rp\${bunga.toStringAsFixed(2)}");
  print("📊 Total pembayaran: Rp\${(p + bunga).toStringAsFixed(2)}");
}

void misi5() {
  print("🎯 Misi 5: Masukkan Bilangan Bulat");

  stdout.write("🔢 Masukkan bilangan bulat: ");
  int angka = int.parse(stdin.readLineSync()!);

  print("✅ Angka yang kamu masukkan adalah: \$angka");
  print("🧠 Angka tersebut \${angka % 2 == 0 ? 'genap' : 'ganjil'}.");
}

void misi6() {
  print("🎯 Misi 6: Gabung Nama Depan dan Belakang");

  stdout.write("🧑 Nama depan: ");
  String depan = stdin.readLineSync()!;

  stdout.write("👩 Nama belakang: ");
  String belakang = stdin.readLineSync()!;

  String lengkap = "\$depan \$belakang";
  print("👤 Nama lengkap kamu: \$lengkap");
  print("🧠 Panjang nama: \${lengkap.length} karakter");
}

void misi7() {
  print("🎯 Misi 7: Pembagian dan Sisa");

  stdout.write("🔢 Bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("🔢 Bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  int hasilBagi = a ~/ b;
  int sisa = a % b;

  print("📤 Hasil bagi: \$hasilBagi");
  print("🗂️ Sisa bagi: \$sisa");
}

void misi8() {
  print("🎯 Misi 8: Menukar Dua Angka");

  stdout.write("🔁 Masukkan angka A: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("🔁 Masukkan angka B: ");
  int b = int.parse(stdin.readLineSync()!);

  print("🔄 Sebelum tukar: A = \$a, B = \$b");

  int temp = a;
  a = b;
  b = temp;

  print("✅ Setelah tukar: A = \$a, B = \$b");
}

void misi9() {
  print("🎯 Misi 9: Hapus Semua Spasi dari Kalimat");

  stdout.write("📜 Masukkan kalimat: ");
  String kalimat = stdin.readLineSync()!;
  String hasil = kalimat.replaceAll(' ', '');

  print("🧼 Tanpa spasi: \$hasil");
  print("🔍 Total karakter asli: \${kalimat.length}, setelah dibersihkan: \${hasil.length}");
}

void misi10() {
  print("🎯 Misi 10: Konversi String ke Integer");

  stdout.write("🧾 Masukkan angka dalam bentuk teks: ");
  String teks = stdin.readLineSync()!;
  try {
    int angka = int.parse(teks);
    print("🎯 Konversi sukses: \$angka");
    print("🔎 Angka ini \${angka % 2 == 0 ? 'genap' : 'ganjil'}.");
  } catch (e) {
    print("🚫 Gagal mengonversi. Pastikan hanya angka.");
  }
}

void misi11() {
  print("🎯 Misi 11: Pembagi Tagihan");

  stdout.write("💸 Masukkan total tagihan (Rp): ");
  double total = double.parse(stdin.readLineSync()!);

  stdout.write("👥 Masukkan jumlah orang: ");
  int orang = int.parse(stdin.readLineSync()!);

  double perOrang = total / orang;

  print("🍽️ Setiap orang harus membayar: Rp\${perOrang.toStringAsFixed(2)}");

  int dibulatkan = perOrang.ceil();
  print("💡 Saran: Bulatkan ke atas jadi Rp\$dibulatkan untuk memudahkan transaksi tunai.");
}
