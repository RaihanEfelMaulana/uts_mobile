import 'package:flutter/material.dart';
import 'package:uts_raihan/senddata.dart';

class MyHal2 extends StatefulWidget {
  const MyHal2({super.key});

  @override
  State<MyHal2> createState() => _MyHal2State();
}

class _MyHal2State extends State<MyHal2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Hardware")),
      body: Card(
        margin: EdgeInsets.all(20),
        elevation: 25,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("Hardware Store",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 150, 10, 19))),
            SizedBox(height: 20),
            ListTile(
              leading: Image.asset('images/image1.jpg', height: 80, width: 100),
              title: Text("Switch Netgear",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "Switch netgear , tipe 05305 , Harga 60.000 , Produsen Redhat. Switch dengan merk netgear tipe 05305 dengan 5 port dan satu untuk port daya dengan warna hitam dof",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.asset('images/image2.jpg', height: 80, width: 100),
              title: Text("Router Tp-link",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "router Tp-link, tipe re56t, harga 79.000, produsen cisco . Dengan 3 antena untuk menangkap sinyal dan dilengkapi dengan tombol daya dengan warna hitam ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.asset('images/image3.jpg', height: 80, width: 100),
              title: Text("Kabel Lan",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "Kabel Lan, tipe Cross-Over, harga 20.000, produsen Tp-link. Kabel lan dengan tipe cross over yang digunakan untuk menyambungkan jaringan dari switch ke parangkat kita",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.asset('images/image4.jpg', height: 80, width: 100),
              title: Text("Lan Card",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "Lan Card , tipe net56f, harga 150.000 , produsen logitech. Lan Card yang berfungsi untuk port bagi kabel lan untuk menyambungkan jaringan",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.asset('images/image5.jpg', height: 80, width: 100),
              title: Text("Perangkat untuk membuat kabel lan",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "Dilangkapii dengan tang criping alat pemutus kabel , alat pemisah karet pada kabel dan selanjjutnya rj45 harga 250.000 produsen unifest",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.asset('images/image6.jpg', height: 80, width: 100),
              title: Text("Sensor HR911105A",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              subtitle: Text(
                  "Sensor jaringan, tipe HR91105A, Harga 90.000, produsen PT-Link. Sensor yang berfungsi untuk perangkat wirelles dengan disertai lansung dengan kabel jumper",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              trailing: Icon(Icons.ads_click),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyData()));
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
