
import 'dart:io';
import 'dart:math';

void main() {
  print("🌟 Selamat datang di Dart Explorer 2025 - Percabangan & Perulangan!");
  print("--------------------------------------------------------------");
  print("Pilih misi (1-10) untuk memulai atau 0 untuk keluar:");
  print("1️⃣  Cek Syarat Memilih (Usia)");
  print("2️⃣  Deteksi Angka (+/-/0)");
  print("3️⃣  Faktorial dengan While");
  print("4️⃣  Tebak Angka (1-10)");
  print("5️⃣  Cetak List Terbalik");
  print("6️⃣  Cek Tahun Kabisat");
  print("7️⃣  Hari Kerja / Akhir Pekan");
  print("8️⃣  Jumlah Digit Angka");
  print("9️⃣  Game: Tebak Angka 1-100");
  print("🔟  Cetak Kata & Panjangnya");
  print("0️⃣  Keluar");

  stdout.write("🎮 Pilihan kamu: ");
  int pilihan = int.parse(stdin.readLineSync()!);
  print("--------------------------------------------------------------");

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
    case 0:
      print("👋 Terima kasih telah menjelajah Dart Explorer 2025!");
      break;
    default:
      print("🚫 Misi tidak ditemukan.");
  }
}

// 1. Cek usia memilih
void misi1() {
  stdout.write("🎂 Masukkan usia kamu: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("✅ Kamu sudah cukup umur untuk memilih!");
  } else {
    print("❌ Maaf, kamu belum memenuhi syarat untuk memilih.");
  }
}

// 2. Deteksi Angka
void misi2() {
  stdout.write("🔢 Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  switch (angka.sign) {
    case 1: print("📈 Angka positif"); break;
    case -1: print("📉 Angka negatif"); break;
    case 0: print("⚖️ Nol"); break;
  }
}

// 3. Faktorial dengan while
void misi3() {
  stdout.write("🔁 Masukkan angka untuk faktorial: ");
  int n = int.parse(stdin.readLineSync()!);
  int hasil = 1, i = 1;
  while (i <= n) {
    hasil *= i;
    i++;
  }
  print("🧮 Faktorial dari $n adalah $hasil");
}

// 4. Tebak angka 1-10
void misi4() {
  int jawaban = Random().nextInt(10) + 1;
  int tebakan;
  print("🎯 Tebak angka antara 1-10");

  do {
    stdout.write("👉 Masukkan tebakan: ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan != jawaban) print("❌ Salah, coba lagi!");
  } while (tebakan != jawaban);

  print("🎉 Benar! Angkanya adalah $jawaban");
}

// 5. Cetak list terbalik
void misi5() {
  List<int> angka = [3, 7, 1, 9, 4];
  print("📦 List awal: $angka");
  print("🔁 Urutan terbalik:");
  for (var elemen in angka.reversed) {
    print("🔹 $elemen");
  }
}

// 6. Tahun kabisat
void misi6() {
  stdout.write("📆 Masukkan tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);
  if ((tahun % 4 == 0 && tahun % 100 != 0) || tahun % 400 == 0) {
    print("✅ $tahun adalah tahun kabisat!");
  } else {
    print("❌ $tahun bukan tahun kabisat.");
  }
}

// 7. Hari kerja / akhir pekan
void misi7() {
  stdout.write("📅 Masukkan hari (Senin-Minggu): ");
  String hari = stdin.readLineSync()!.toLowerCase();
  switch (hari) {
    case "sabtu":
    case "minggu":
      print("🎉 Itu akhir pekan!");
      break;
    case "senin":
    case "selasa":
    case "rabu":
    case "kamis":
    case "jumat":
      print("💼 Itu hari kerja.");
      break;
    default:
      print("🚫 Hari tidak dikenali.");
  }
}

// 8. Jumlah digit angka
void misi8() {
  stdout.write("🔢 Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  int count = 0;
  int temp = angka.abs();

  while (temp > 0) {
    count++;
    temp ~/= 10;
  }

  print("📏 Jumlah digit dari $angka adalah $count");
}

// 9. Game tebak angka 1-100
void misi9() {
  int target = Random().nextInt(100) + 1;
  int tebakan;
  print("🎮 Game: Tebak angka antara 1-100");

  do {
    stdout.write("🧠 Tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < target) {
      print("📉 Terlalu kecil!");
    } else if (tebakan > target) {
      print("📈 Terlalu besar!");
    } else {
      print("🎯 Benar! Kamu menebak angka $target!");
    }
  } while (tebakan != target);
}

// 10. Cetak kata dan panjangnya
void misi10() {
  List<String> kata = ["dart", "explorer", "flutter", "code"];
  print("📚 Kata-kata yang tersedia:");
  for (var k in kata) {
    print("🔠 $k (panjang: ${k.length})");
  }
}
