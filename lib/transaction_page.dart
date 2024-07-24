import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample transaction data
    final transactions = [
      {'date': '2024-07-23', 'amount': 'Rp 500.000'},
      {'date': '2024-07-22', 'amount': 'Rp 300.000'},
      {'date': '2024-07-21', 'amount': 'Rp 450.000'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            leading: Icon(Icons.payment, color: Colors.green),
            title: Text('Tanggal: ${transaction['date']}'),
            subtitle: Text('Jumlah: ${transaction['amount']}'),
          );
        },
      ),
    );
  }
}
