import 'package:bbm/model/mahasiswa.dart';
import 'package:bbm/pages/pertemuan2.dart';
import 'package:flutter/material.dart';
import 'package:bbm/pages/pertemuan1.dart';

class DetailPage extends StatelessWidget {
  final DataMahasiswa data;
  DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("Week 1"),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 170,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: "Nama : ${data.nama}"),
                SizedBox(height: 20),
                MyText(text: "NIM \t\t\t : ${data.nim}"),
                SizedBox(height: 20),
                MyText(text: "TTL \t\t\t : ${data.ttl}"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
