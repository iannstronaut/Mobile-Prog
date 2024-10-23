import 'package:flutter/material.dart';
import 'package:linkaja_v2/shared/theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: whiteColor,
          title: const SizedBox.shrink(), // Menghilangkan judul default
          flexibleSpace: Container(
            alignment: Alignment.center, // Menempatkan judul di tengah
            child: const Text(
              'Transaction History', // Nama halaman
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                child: Text(
                  "Pending",
                  style: TextStyle(fontSize: 18),
                ),
              ), // Tab pertama
              Tab(
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 18),
                ),
              ), // Tab kedua
            ],
            unselectedLabelColor:
                Colors.grey, // Warna teks untuk tab yang tidak dipilih
            indicatorColor: redTomato,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: redTomato,
          ),
        ),
        body: TabBarView(
          children: [
            PendingTab(), // Isi halaman Pending
            DoneTab(), // Isi halaman Done
          ],
        ),
      ),
    );
  }
}

// Widget untuk Tab Pending
class PendingTab extends StatelessWidget {
  const PendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/ic_no_transaction.png",
            width: 250.0,
          ),
          Text(
            "All transaction is completed",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          Text(
            "Any pending transaction will appear in this page",
            style: TextStyle(color: Colors.grey[600]),
          )
        ],
      ),
    );
  }
}

// Widget untuk Tab Done
class DoneTab extends StatelessWidget {
  DoneTab({super.key});
  final List<Map<String, String>> transactions = [
    {
      'title': 'Pay Merchant',
      'amount': 'Rp45.000',
      'status': 'Success',
      'date': '15 Sep 2024, 17:33 WIB',
      'detail': 'Indomaret Purchase',
    },
    {
      'title': 'Pay Merchant',
      'amount': 'Rp75.000',
      'status': 'Success',
      'date': '14 Sep 2024, 14:20 WIB',
      'detail': 'Alfamart Purchase',
    },
    {
      'title': 'Pay Merchant',
      'amount': 'Rp100.000',
      'status': 'Success',
      'date': '13 Sep 2024, 12:15 WIB',
      'detail': 'Grocery Store Purchase',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: transactions.map((transaction) {
          return Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            padding: EdgeInsets.only(left: 12.0, top: 16.0, bottom: 16.0),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction['title']!,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Text(
                          transaction['amount']!,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction['date']!,
                      style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0), // Padding di dalam container
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors
                                .green, // Ganti dengan warna sesuai status
                            width: 4.0, // Ketebalan border
                          ),
                        ),
                      ),
                      child: Text(
                        transaction['status']!,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
                // Tambahkan border di bawah row terakhir
                const SizedBox(height: 12.0), // Ruang antara konten dan border
                Container(
                  height: 1, // Tinggi border
                  color: Colors.grey[300], // Warna border
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  transaction['detail']!,
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
