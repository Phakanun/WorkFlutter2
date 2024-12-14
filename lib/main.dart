import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 127, 62, 152)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 127, 62, 152))),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Title'),
            leading: IconButton(
                onPressed: () {
                  debugPrint('leading icon pressed');
                },
                icon: const Icon(Icons.menu)),
            actions: [
              IconButton(
                  onPressed: () {
                    debugPrint('cart');
                  },
                  icon: const Icon(Icons.shopping_cart_checkout_outlined)),
              IconButton(
                  onPressed: () {
                    debugPrint('bag');
                  },
                  icon: const Icon(Icons.shopping_bag_rounded))
            ],
          ),
          body: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),

              const Text(
                'ขอบคุณที่ใช้บริการ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              
              const Text(
                'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 50,),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'สรุปรายละเอียดการชาร์จ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ),

              //Image.network('https://static.wikia.nocookie.net/projectsekai/images/d/dc/Amid_Unchanging_Warmth_T.png/revision/latest/scale-to-width-down/250?cb=20230228030901'),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month, size: 20,),
                    SizedBox(width: 8,),
                    Text(
                      'วันที่ชาร์จ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Text(
                  '9 ธันวาคม 2567',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.ev_station, size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'สถานีชาร์จ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Text(
                  'PEA',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text(
                  '#1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.battery_charging_full, size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'ประเภทหัวชาร์จ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Text(
                  'CCS2',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),

            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('FAB pressed');
            },
            child: const Icon(Icons.cabin),
          )),
    );
  }
}
