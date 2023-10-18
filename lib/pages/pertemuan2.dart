import 'package:bbm/pages/detailPage.dart';
import 'package:flutter/material.dart';
import 'package:bbm/model/mahasiswa.dart';

class Week2 extends StatefulWidget {
  const Week2({super.key});

  @override
  State<Week2> createState() => _Week2State();
}

class _Week2State extends State<Week2> {
  @override
  Widget build(BuildContext context) {
    final List<DataMahasiswa> mahasiswa = [
      DataMahasiswa(
          nama: "Tiara 1", nim: "210605110084", ttl: "Tuban/27/07/2002"),
      DataMahasiswa(
          nama: "Tiara 2", nim: "210605110085", ttl: "Tuban/27/07/2003"),
      DataMahasiswa(
          nama: "Tiara 3", nim: "210605110086", ttl: "Tuban/27/07/2004"),
      DataMahasiswa(
          nama: "Tiara 4", nim: "210605110087", ttl: "Tuban/27/07/2005"),
      DataMahasiswa(
          nama: "Tiara 5", nim: "210605110088", ttl: "Tuban/27/07/2006"),
      DataMahasiswa(nama: "Tiara 6", nim: "210605110089", ttl: "Tuban/27/07/2007")
    ];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        //banyak nya data yang ingin di tampilkan
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.person),
          title: Text(mahasiswa[index].nama),
          subtitle: Text(mahasiswa[index].nim),
          trailing: Text(mahasiswa[index].ttl),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(data: mahasiswa[index]),
                ));
          },
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  MyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
