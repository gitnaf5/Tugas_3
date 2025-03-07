import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Click Counter',
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama aplikasi
      ),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Judul di tengah
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Pusatkan konten
          children: <Widget>[
            const Text(
              'Jumlah Klik:',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Text(
              '$_counter', // Menampilkan nilai counter
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Menjalankan fungsi saat ditekan
        tooltip: 'Tambah', // Tooltip saat hover
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
    );
  }
}
