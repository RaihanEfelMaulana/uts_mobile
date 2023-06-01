import 'package:flutter/material.dart';

class MyShareData extends StatelessWidget {
  String nama, jenis, harga, produsen, deskripsi;
  MyShareData(
      {required this.nama,
      required this.jenis,
      required this.harga,
      required this.produsen,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nama = TextEditingController(text: nama);
    final TextEditingController _jenis = TextEditingController(text: jenis);
    final TextEditingController _harga = TextEditingController(text: harga);
    final TextEditingController _produsen =
        TextEditingController(text: produsen);
    final TextEditingController _deskripsi =
        TextEditingController(text: deskripsi);
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Pemesan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Text("Pesanan",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _nama,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nama Hardware",
                    labelText: "Nama Hardware"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _jenis,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Jenis Hardware",
                    labelText: "Jenis Hardware"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _harga,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Harga Hardware",
                    labelText: "Harga Hardware"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _produsen,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Produsen Hardware",
                    labelText: "Produsen Hardware"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _deskripsi,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Deskripsi",
                    labelText: "Deskripsi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
