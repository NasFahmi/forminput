import 'package:flutter/material.dart';
import './detail.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final kodeProdukController = TextEditingController();
  final namaProdukController = TextEditingController();
  final hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Kode Produk'),
                  controller: kodeProdukController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Nama Produk'),
                  controller: namaProdukController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Harga'),
                  controller: hargaController,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // print(kodeProdukController.text);
                    // print(namaProdukController.text);
                    // print(hargaController.text);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Detail(
                          kodeProduk: kodeProdukController.text,
                          namaProduk: namaProdukController.text,
                          harga: hargaController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
