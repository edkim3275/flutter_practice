import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            child: Row(
              children: [
                Text(
                  '금호동3가',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black54, size: 24.0)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.black54, size: 24.0)),
            Container(
                margin: EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.airplane_ticket_outlined,
                      color: Colors.black54, size: 24.0),
                )),
          ],
        ),
        body: Container(
            alignment: Alignment(0.0, -1.0),
            padding: EdgeInsets.all(5),
            child: Container(
                width: 300,
                height: 110,
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.orange.shade600),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blue.shade200, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      child: Image.asset(
                        'test.png',
                        width: 100,
                      ),
                    ),
                    Container(
                      width: 194,
                      height: 100,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.shade200, width: 2),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text('성동구 원당동 : 끌올 10분 전',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w600)),
                            Text('210,000원',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.favorite_outline,
                                    size: 12,
                                  ),
                                ),
                                Text(
                                  '4',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ]),
                    )
                  ],
                ))),
      ),
    );
  }
}
