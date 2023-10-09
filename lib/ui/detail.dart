import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String? kodeProduk;
  String? namaProduk;
  String? harga;
  Detail({this.harga, this.namaProduk, this.kodeProduk, super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Produk'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Text('Kode Produk = ${widget.kodeProduk.toString()}'),
                  Text('Nama Produk = ${widget.namaProduk.toString()}'),
                  Text('Harga = ${widget.harga.toString()}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
