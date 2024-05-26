import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: listNamaMahasiswa.length,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor:
                    index == 2 ? Color.fromARGB(255, 141, 231, 122) : Colors.blueAccent, 
                title: Text(
                  listNamaMahasiswa[index].nama,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(
                  listNamaMahasiswa[index].nim,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}

class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({required this.nama, required this.nim});
}

List<Mahasiswa> listNamaMahasiswa = [
  Mahasiswa(nama: 'AKHYINA MUAZI', nim: 'STI202102578'),
  Mahasiswa(nama: 'YEREMIA LAURENT HUTAURUK', nim: 'STI202102579'),
  Mahasiswa(nama: 'LOUIS ELUA ARKANANTA', nim: 'STI202102584'),
  Mahasiswa(nama: 'FIDELIS GULO', nim: 'STI202102586'),
  Mahasiswa(nama: 'MUHAMMAD ARDIANSYAH SAPUTRA', nim: 'STI202102591'),
];
