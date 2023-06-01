import 'package:flutter/material.dart';
import 'package:uts_raihan/sharedata.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _jenis = TextEditingController();
  final TextEditingController _harga = TextEditingController();
  final TextEditingController _produsen = TextEditingController();
  final TextEditingController _deskripsi = TextEditingController();

  String nama = "";
  String jenis = "";
  String harga = "";
  String produsen = "";
  String deskripsi = "";

  void getDataHardware() {
    setState(() {
      nama = _nama.text;
      jenis = _jenis.text;
      harga = _harga.text;
      produsen = _produsen.text;
      deskripsi = _deskripsi.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Hardware")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Text("Data Pesanan",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: _nama,
                autocorrect: true,
                decoration: const InputDecoration(
                    labelText: "Nama Hardware : ",
                    hintText: "input nama hardware",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 254, 252, 252),
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.people),
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ))),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: _jenis,
                autocorrect: true,
                decoration: const InputDecoration(
                    labelText: "Jenis : ",
                    hintText: "input jenis hardware : ",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 254, 252, 252),
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.account_balance_wallet_rounded),
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ))),
                maxLength: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: _harga,
                autocorrect: true,
                decoration: const InputDecoration(
                    labelText: "Harga : ",
                    hintText: "input harga : ",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 254, 252, 252),
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.price_check),
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ))),
                maxLength: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: _produsen,
                autocorrect: true,
                decoration: const InputDecoration(
                    labelText: "Produsen Hardware : ",
                    hintText: "input nama produsen",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 254, 252, 252),
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.production_quantity_limits),
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ))),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: _deskripsi,
                autocorrect: true,
                decoration: const InputDecoration(
                    labelText: "Deskripsi : ",
                    hintText: "input deskripsi",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 254, 252, 252),
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.description),
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ))),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => MyShareData(
                              nama: _nama.text,
                              jenis: _jenis.text,
                              harga: _harga.text,
                              produsen: _produsen.text,
                              deskripsi: _deskripsi.text,
                            )),
                  );
                },
                child: Text("Pesan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
