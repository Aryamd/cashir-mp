import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample history data
    final history = [
      'Barang A dibeli pada 2024-07-23',
      'Barang B dibeli pada 2024-07-22',
      'Barang C dibeli pada 2024-07-21',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat'),
      ),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          final activity = history[index];
          return ListTile(
            leading: Icon(Icons.history, color: Colors.blue),
            title: Text(activity),
          );
        },
      ),
    );
  }
}
