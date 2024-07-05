import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[300],
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Image.network(
                          'https://i.pinimg.com/236x/2f/52/bb/2f52bb67e52f767ed39a2d655537829c.jpg', // URL gambar pertama
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[300],
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Image.network(
                          'https://i.pinimg.com/564x/cd/44/32/cd44329d526b8041583d5b213659f853.jpg', // URL gambar kedua
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              color: Colors.grey[300],
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Image.network(
                        'https://i.pinimg.com/564x/4e/68/5b/4e685b767306dc74464572216c2bac78.jpg', // URL gambar ketiga
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Mizuhara Chizuru',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              color: Colors.grey[300],
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Image.network(
                        'https://i.pinimg.com/564x/38/40/44/38404403c0de80b52f04298c0e6485ee.jpg', // URL gambar keempat
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Ichinose Chizuru',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
