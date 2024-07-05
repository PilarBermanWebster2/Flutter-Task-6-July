import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'nama': 'Ujang Albert',
      'umur': 18,
      'alamat': 'Sumenep',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300'
      ],
    },
    {
      'nama': 'Max Darso',
      'umur': 20,
      'alamat': 'Ciparay',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300'
      ],
    },
    {
      'nama': 'Dede Rashford',
      'umur': 25,
      'alamat': 'Banjarmasin',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300'
      ],
    },
    {
      'nama': 'Alberto Suroso',
      'umur': 22,
      'alamat': 'Solo',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/seed/picsum/200/300'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Example'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama: ${data[index]['nama']}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Umur: ${data[index]['umur'].toString()}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Alamat: ${data[index]['alamat']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Galeri:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data[index]['photo'].length,
                      itemBuilder: (context, imgIndex) {
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              data[index]['photo'][imgIndex],
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: ListExample(),
    ));
